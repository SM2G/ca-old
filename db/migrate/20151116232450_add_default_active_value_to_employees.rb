class AddDefaultActiveValueToEmployees < ActiveRecord::Migration
  def up
    change_column_default :employees, :is_active, true
  end

  def down
    change_column_default :employees, :is_active, nil
  end
end
