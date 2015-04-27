class RenamingValidation < ActiveRecord::Migration
  def change
    rename_table :sessions, :validation_sessions
  end
end
