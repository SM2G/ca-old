class DropTableDocumentModels < ActiveRecord::Migration
  def change
    drop_table :document_models
  end
end
