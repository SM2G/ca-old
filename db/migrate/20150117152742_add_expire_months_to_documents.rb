class AddExpireMonthsToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :expire_months, :integer
  end
end
