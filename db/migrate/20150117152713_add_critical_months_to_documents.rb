class AddCriticalMonthsToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :critical_months, :integer
  end
end
