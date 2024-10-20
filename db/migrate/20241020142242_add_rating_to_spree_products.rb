class AddRatingToSpreeProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_products, :rating, :decimal
  end
end
