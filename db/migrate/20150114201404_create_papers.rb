class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :document_id
      t.date :expiration_date

      t.timestamps null: false
    end
  end
end
