# This migration comes from spree_admin_roles_and_access (originally 20170508091139)
class DeprecateLegacyRolesAndPermissions < ActiveRecord::Migration[4.2]
  def display_warning
    deprecator = ActiveSupport::Deprecation.new("Legacy roles and permissions are deprecated.", "7.0")
    deprecator.warn("Legacy roles and permissions are deprecated.")
  end
  def up
    display_warning
    deprecator = ActiveSupport::Deprecation.new("Legacy roles and permissions are deprecated.", "7.0")
    deprecator.warn("Legacy roles and permissions are deprecated.")
    Spree::Role.find_each do |role|
      permission_set = Spree::PermissionSet.where(name: role.name).first_or_create!
      role_permissions = role.legacy_permissions
      if role_permissions.present?
        role_permissions.each do |permission|
          permission_set.permissions << permission unless permission_set.permissions.include? permission
        end

        if permission_set.permissions.present?
          permission_set.save!
          role.permission_sets << permission_set
        end
      end
    end
  end

  def down
    display_warning
    deprecator = ActiveSupport::Deprecation.new("Legacy roles and permissions are deprecated.", "7.0")
    deprecator.warn("Legacy roles and permissions are deprecated.")
  end
end
