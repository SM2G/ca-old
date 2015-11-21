class AddUserReferenceToProfiles < ActiveRecord::Migration
  def change
    add_reference   :profiles, :user, index: true
    add_foreign_key :profiles, :users
  end
end
