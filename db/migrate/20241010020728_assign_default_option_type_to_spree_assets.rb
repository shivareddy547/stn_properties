class AssignDefaultOptionTypeToSpreeAssets < ActiveRecord::Migration[7.1]

    def up
      # Create a default option type if needed
      default_option_type = Spree::OptionType.find_or_create_by!(name: 'default', presentation: 'Default')

      # Update all existing assets to have the default option type
      Spree::Asset.where(option_type_id: nil).update_all(option_type_id: default_option_type.id)
    end

    def down
      # Optionally, undo the update if rolling back
      Spree::Asset.where(option_type_id: Spree::OptionType.find_by(name: 'default').id).update_all(option_type_id: nil)
    end

end
