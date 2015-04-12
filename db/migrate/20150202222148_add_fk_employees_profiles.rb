class AddFkEmployeesProfiles < ActiveRecord::Migration
  def change
  	add_column :profiles, :profile_id, :integer
  	add_foreign_key(:employees, :profiles, :profile_id)
  end
end
