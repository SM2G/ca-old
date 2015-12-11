class RemoveExpireDaysFromDocuments < ActiveRecord::Migration
  def up
  	remove_column "documents", "expire_days"
  end

  def down
  	add_column "documents", "expire_days", :integer
  end
end
