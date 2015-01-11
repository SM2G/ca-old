class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.boolean :is_active
      t.string :last_name
      t.string :first_name
      t.date :birthdate
      t.string :status
      t.boolean :is_default
      t.boolean :is_cyno
      t.boolean :is_xray

      t.timestamps null: false
    end
  end
end
