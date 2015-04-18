class AddSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.datetime :session_start_datetime
      t.float :session_temp
      t.float :session_hygro
      t.integer :employee_id
      t.integer :dog_id
      t.integer :slot_1_filter
      t.float :slot_1_temp
      t.integer :slot_2_filter
      t.float :slot_2_temp
      t.integer :slot_3_filter
      t.float :slot_3_temp
      t.integer :slot_4_filter
      t.float :slot_4_temp
      t.integer :slot_5_filter
      t.float :slot_5_temp
      t.string :result
      t.text :comments
      t.timestamps null: false
    end
  end
end
