class RenamingValidationBack < ActiveRecord::Migration
  def change
    rename_table :validation_sessions, :sessions
  end
end
