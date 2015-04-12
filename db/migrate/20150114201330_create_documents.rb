class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :document_name
      t.integer :profile_id
      t.integer :warning_days
      t.integer :critical_days
      t.integer :expire_days

      t.timestamps null: false
    end
  end
end
