class AddPlanToUsers < ActiveRecord::Migration
  def change
    add_column  :users, :plan, :string
    add_index   :users, :plan
  end
end
