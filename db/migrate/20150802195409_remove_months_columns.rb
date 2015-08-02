class RemoveMonthsColumns < ActiveRecord::Migration
  def up
    remove_column "documents", "warning_months"
    remove_column "documents", "critical_months"
    remove_column "documents", "expire_months"
  end

  def down
      add_column "documents", "warning_months", :integer
      add_column "documents", "critical_months", :integer
      add_column "documents", "expire_months", :integer
  end
end
