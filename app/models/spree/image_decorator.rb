
Spree::Asset.class_eval do
    # Alias spree_roles to roles if the method exists
    belongs_to :option_type, class_name: "Spree::OptionType", optional: true
  end
