class SessionsCleanup < ActiveRecord::Migration
  def change
    remove_column :sessions, :session_start_datetime
    remove_column :sessions, :session_temp
    remove_column :sessions, :session_hygro
    remove_column :sessions, :employee_id
    remove_column :sessions, :dog_id
    remove_column :sessions, :slot_1_filter
    remove_column :sessions, :slot_1_temp
    remove_column :sessions, :slot_2_filter
    remove_column :sessions, :slot_2_temp
    remove_column :sessions, :slot_3_filter
    remove_column :sessions, :slot_3_temp
    remove_column :sessions, :slot_4_filter
    remove_column :sessions, :slot_4_temp
    remove_column :sessions, :slot_5_filter
    remove_column :sessions, :slot_5_temp
    remove_column :sessions, :result
    remove_column :sessions, :comments
  end
end
