class AddWarningMonthsToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :warning_months, :integer
  end
end
