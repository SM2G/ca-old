class AddFilterDetails < ActiveRecord::Migration
  def up
    add_column "filters", "filter_type", :integer
  end

  def down
  	remove_column "filters", "filter_type"
  end
end
