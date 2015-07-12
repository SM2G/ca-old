class DropUnusedTables < ActiveRecord::Migration
  def change
    drop_table :filter_boxes
    drop_table :filters
  end
end
