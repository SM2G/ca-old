class AddMissingForeignKeysToPapers < ActiveRecord::Migration
  def change
    add_index       :papers, :document_id
    add_index       :papers, :employee_id

    add_foreign_key :papers, :documents
    add_foreign_key :papers, :employees
  end
end
