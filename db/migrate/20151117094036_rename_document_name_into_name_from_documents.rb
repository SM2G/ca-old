class RenameDocumentNameIntoNameFromDocuments < ActiveRecord::Migration
  def change
    rename_column :documents, :document_name, :name
  end
end
