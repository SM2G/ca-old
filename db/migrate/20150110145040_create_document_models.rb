class CreateDocumentModels < ActiveRecord::Migration
  def change
    create_table :document_models do |t|
      t.date :warning_date
      t.date :critical_date
      t.date :expire_date

      t.timestamps null: false
    end
  end
end
