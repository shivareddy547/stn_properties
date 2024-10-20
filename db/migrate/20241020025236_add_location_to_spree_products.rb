class AddLocationToSpreeProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_products, :city, :string
    add_column :spree_products, :state, :string
    add_column :spree_products, :country, :string
    add_column :spree_products, :latitude, :float
    add_column :spree_products, :longitude, :float
    add_column :spree_products, :address1, :string
    add_column :spree_products, :address2, :string
    add_column :spree_products, :pincode, :string
    add_column :spree_products, :country_code, :string
  end
end
