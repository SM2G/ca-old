class RemoveUnusedPrfIdOld < ActiveRecord::Migration
  def change
    remove_column :documents, :unused_prf_id_old
  end
end
