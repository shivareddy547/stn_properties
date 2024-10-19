class AddOptionTypeToSpreeAssets < ActiveRecord::Migration[7.1]
  def change
    add_reference :spree_assets, :option_type, foreign_key: { to_table: :spree_option_types }, null: true
  end
end
