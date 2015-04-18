class CreateFilterBoxes < ActiveRecord::Migration
  def change
    create_table :filter_boxes do |t|

      t.timestamps null: false
    end
  end
end
