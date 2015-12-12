class RemoveBirthdateFrom < ActiveRecord::Migration
  def up
  	remove_column "employees", "birthdate"
  end

  def down
  	add_column "employees", "birthdate", :date
  end
end
