class AdminUsersUpdate < ActiveRecord::Migration
  def up
    add_column "admin_users", "hashed_password", :string , limit: 40
    add_column(:admin_users, :created_at, :datetime)
    add_column(:admin_users, :updated_at, :datetime)
  end

  def down
    remove_column "admin_users", "hashed_password"
    remove_column "admin_users", "created_at"
    remove_column "admin_users", "updated_at"
  end
end
