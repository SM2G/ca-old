class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.date :start_date
      t.date :end_date
      t.integer :paper_id
      t.string :alert_status

      t.timestamps null: false
    end
  end
end
