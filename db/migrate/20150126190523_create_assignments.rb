class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :profile_id
      t.integer :document_id
      t.timestamps null: false
    end
    add_index :assignments, :profile_id
    add_index :assignments, :document_id
  end
end
