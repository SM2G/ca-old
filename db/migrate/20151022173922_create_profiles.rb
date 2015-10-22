class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.timestamps null: false
    end

    remove_column :assignments, :profile_id
    remove_column :employees,   :profile_id

    add_reference :assignments, :profile, index: true, foreign_key: true
    add_reference :employees,   :profile, index: true, foreign_key: true
  end
end
