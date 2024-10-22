class CreateSpreeRolesUsersJoinTable < ActiveRecord::Migration[7.1]
  def change
    create_table :spree_roles_users, id: false do |t|
      t.references :role, foreign_key: { to_table: :spree_roles }
      t.references :user, foreign_key: { to_table: :spree_users }
    end
  end
end
