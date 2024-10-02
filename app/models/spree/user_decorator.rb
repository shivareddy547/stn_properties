# app/models/spree/user_decorator.rb
# module Spree
#   User.class_eval do
#     # Alias spree_roles to roles if the method exists
#     if method_defined?(:spree_roles)
#       alias_method :roles, :spree_roles
#     else
#       # Define spree_roles if not already defined
#       has_and_belongs_to_many :spree_roles,
#                               join_table: 'spree_roles_users',
#                               class_name: 'Spree::Role'
#     end
#   end
# end
