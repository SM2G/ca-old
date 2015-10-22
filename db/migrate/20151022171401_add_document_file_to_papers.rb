class AddDocumentFileToPapers < ActiveRecord::Migration
  def change
    add_attachment :papers, :document_file
  end
end
