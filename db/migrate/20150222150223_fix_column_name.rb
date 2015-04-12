class FixColumnName < ActiveRecord::Migration
  def self.up
   rename_column :documents, :profile_id, :unused_prf_id_old
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end

end
