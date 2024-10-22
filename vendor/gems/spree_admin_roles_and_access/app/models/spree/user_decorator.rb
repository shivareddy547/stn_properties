module Spree
  Spree.user_class.class_eval do
    if method_defined?(:spree_roles)
      alias_method :roles, :spree_roles
    else
      # Define spree_roles if not already defined
      has_and_belongs_to_many :spree_roles,
                              join_table: 'spree_roles_users',
                              class_name: 'Spree::Role'
    end
  end
end
