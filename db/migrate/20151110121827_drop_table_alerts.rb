class DropTableAlerts < ActiveRecord::Migration
  def change
    drop_table :alerts
  end
end
