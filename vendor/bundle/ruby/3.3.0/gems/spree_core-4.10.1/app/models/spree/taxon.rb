# TODO: let friendly id take care of sanitizing the url
require 'stringex'

module Spree
  class Taxon < Spree::Base
    include Spree::TranslatableResource
    include Spree::TranslatableResourceSlug
    include Spree::Metadata
    if defined?(Spree::Webhooks::HasWebhooks)
      include Spree::Webhooks::HasWebhooks
    end

    extend FriendlyId
    friendly_id :permalink, slug_column: :permalink, use: :history
    before_validation :set_permalink, on: :create, if: :name

    acts_as_nested_set dependent: :destroy

    belongs_to :taxonomy, class_name: 'Spree::Taxonomy', inverse_of: :taxons
    has_many :classifications, -> { order(:position) }, dependent: :delete_all, inverse_of: :taxon
    has_many :products, through: :classifications

    delegate :store, to: :taxonomy

    has_many :menu_items, as: :linked_resource
    has_many :cms_sections, as: :linked_resource

    has_many :prototype_taxons, class_name: 'Spree::PrototypeTaxon', dependent: :destroy
    has_many :prototypes, through: :prototype_taxons, class_name: 'Spree::Prototype'

    has_many :promotion_rule_taxons, class_name: 'Spree::PromotionRuleTaxon', dependent: :destroy
    has_many :promotion_rules, through: :promotion_rule_taxons, class_name: 'Spree::PromotionRule'

    validates :name, presence: true, uniqueness: { scope: [:parent_id, :taxonomy_id], case_sensitive: false }
    validates :taxonomy, presence: true
    validates :permalink, uniqueness: { case_sensitive: false, scope: [:parent_id, :taxonomy_id] }
    validates :hide_from_nav, inclusion: { in: [true, false] }
    validates_associated :icon
    validate :check_for_root, on: :create
    validate :parent_belongs_to_same_taxonomy
    with_options length: { maximum: 255 }, allow_blank: true do
      validates :meta_keywords
      validates :meta_description
      validates :meta_title
    end

    before_validation :copy_taxonomy_from_parent
    before_save :set_pretty_name
    before_save :set_permalink
    after_save :touch_ancestors_and_taxonomy
    after_update :sync_taxonomy_name
    after_touch :touch_ancestors_and_taxonomy
    after_commit :regenerate_pretty_name_and_permalink, on: :update, if: :should_regenerate_pretty_name_and_permalink?
    after_move :regenerate_pretty_name_and_permalink

    has_one :store, through: :taxonomy

    has_one :icon, as: :viewable, dependent: :destroy, class_name: 'Spree::TaxonImage'

    scope :for_store, ->(store) { joins(:taxonomy).where(spree_taxonomies: { store_id: store.id }) }

    self.whitelisted_ransackable_associations = %w[taxonomy]
    self.whitelisted_ransackable_attributes = %w[name permalink]

    scope :for_stores, ->(stores) { joins(:taxonomy).where(spree_taxonomies: { store_id: stores.ids }) }

    TRANSLATABLE_FIELDS = %i[name pretty_name description permalink].freeze
    translates(*TRANSLATABLE_FIELDS, column_fallback: !Spree.always_use_translations?)

    def slug
      permalink
    end

    def slug=(value)
      self.permalink = value
    end

    self::Translation.class_eval do
      before_save :set_permalink
      before_save :set_pretty_name

      def slug
        permalink
      end

      def slug=(value)
        self.permalink = value
      end

      def set_permalink
        self.permalink = generate_slug
      end

      def set_pretty_name
        self[:pretty_name] = generate_pretty_name
      end

      def name_with_fallback
        name.blank? ? translated_model.name : name
      end

      def pretty_name_with_fallback
        pretty_name.blank? ? translated_model.pretty_name : pretty_name
      end

      private

      def generate_slug
        if parent.present?
          generate_permalink_including_parent
        elsif permalink.blank?
          name_with_fallback.to_url
        else
          permalink.to_url
        end
      end

      def generate_pretty_name
        if parent.present?
          generate_pretty_name_including_parent
        elsif pretty_name.blank?
          pretty_name_with_fallback
        else
          pretty_name
        end
      end

      def generate_permalink_including_parent
        [parent_permalink_with_fallback, (permalink.blank? ? name_with_fallback.to_url : permalink.split('/').last.to_url)].join('/')
      end

      def generate_pretty_name_including_parent
        [parent_pretty_name_with_fallback, (pretty_name.blank? ? name_with_fallback : pretty_name)].compact.join(' -> ')
      end

      def parent
        translated_model.parent
      end

      def parent_permalink_with_fallback
        localized_parent = parent.translations.find_by(locale: locale)
        localized_parent.present? ? localized_parent.permalink : parent.permalink
      end

      def parent_pretty_name_with_fallback
        localized_parent = parent.translations.find_by(locale: locale)
        localized_parent.present? ? localized_parent.pretty_name : parent.pretty_name
      end
    end

    # indicate which filters should be used for a taxon
    # this method should be customized to your own site
    def applicable_filters
      fs = []
      # fs << ProductFilters.taxons_below(self)
      ## unless it's a root taxon? left open for demo purposes

      fs << Spree::Core::ProductFilters.price_filter if Spree::Core::ProductFilters.respond_to?(:price_filter)
      fs << Spree::Core::ProductFilters.brand_filter if Spree::Core::ProductFilters.respond_to?(:brand_filter)
      fs
    end

    # Return meta_title if set otherwise generates from taxon name
    def seo_title
      meta_title.blank? ? name : meta_title
    end

    def set_pretty_name
      self[:pretty_name] = generate_pretty_name
    end

    def generate_pretty_name
      [parent&.pretty_name, name].compact.join(' -> ')
    end

    def generate_slug
      if parent.present?
        [parent.permalink, (permalink.blank? ? name.to_url : permalink.split('/').last.to_url)].join('/')
      elsif permalink.blank?
        name.to_url
      else
        permalink.to_url
      end
    end

    def set_permalink
      if Spree.use_translations?
        translations.each(&:set_permalink)
      else
        self.permalink = generate_slug
      end
    end

    def active_products
      products.active
    end

    def regenerate_pretty_name_and_permalink
      set_permalink
      update_columns(pretty_name: generate_pretty_name, updated_at: Time.current)

      children.reload.each(&:regenerate_pretty_name_and_permalink_as_child)
    end

    def regenerate_pretty_name_and_permalink_as_child
      set_permalink
      update_columns(pretty_name: generate_pretty_name, updated_at: Time.current)

      children.reload.each(&:regenerate_pretty_name_and_permalink_as_child)
    end

    def cached_self_and_descendants_ids
      Rails.cache.fetch("#{cache_key_with_version}/descendant-ids") do
        self_and_descendants.ids
      end
    end

    # awesome_nested_set sorts by :lft and :rgt. This call re-inserts the child
    # node so that its resulting position matches the observable 0-indexed position.
    # ** Note ** no :position column needed - a_n_s doesn't handle the reordering if
    #  you bring your own :order_column.
    #
    #  See #3390 for background.
    def child_index=(idx)
      move_to_child_with_index(parent, idx.to_i) unless new_record?
    end

    private

    def should_regenerate_pretty_name_and_permalink?
      saved_changes.key?(:name) || saved_changes.key?(:permalink)
    end

    def sync_taxonomy_name
      if saved_changes.key?(:name) && root?
        return if taxonomy.name.to_s == name.to_s

        taxonomy.update(name: name)
      end
    end

    def touch_ancestors_and_taxonomy
      # Touches all ancestors at once to avoid recursive taxonomy touch, and reduce queries.
      ancestors.update_all(updated_at: Time.current)
      # Have taxonomy touch happen in #touch_ancestors_and_taxonomy rather than association option in order for imports to override.
      taxonomy.try!(:touch)
    end

    def check_for_root
      if taxonomy.try(:root).present? && parent_id.nil?
        errors.add(:root_conflict, 'this taxonomy already has a root taxon')
      end
    end

    def parent_belongs_to_same_taxonomy
      if parent.present? && parent.taxonomy_id != taxonomy_id
        errors.add(:parent, 'must belong to the same taxonomy')
      end
    end

    def copy_taxonomy_from_parent
      self.taxonomy = parent.taxonomy if parent.present? && taxonomy.blank?
    end
  end
end
