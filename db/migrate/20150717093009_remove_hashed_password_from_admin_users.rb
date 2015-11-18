class RemoveHashedPasswordFromAdminUsers < ActiveRecord::Migration
  def up
  	remove_column "admin_users", "hashed_password"
  end

  def down
  	add_column "admin_users", "hashed_password", :string, limit: 40
  end
end
