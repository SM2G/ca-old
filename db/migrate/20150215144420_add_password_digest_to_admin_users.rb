class AddPasswordDigestToAdminUsers < ActiveRecord::Migration
  def up
  	  create_table :admin_users , force: true do |t|
    t.string   :first_name,      limit: 25
    t.string   :last_name,       limit: 50
    t.string   :email,           limit: 100, default: "", null: false
    t.string   :username,        limit: 25
    t.string   :hashed_password, limit: 40
  end
 end
end
