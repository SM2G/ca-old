class AddEmployeeIdToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :employee_id, :integer
  end
end
