class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|

      t.timestamps null: false
    end
  end
end
