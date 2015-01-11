class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :alert_document_type

      t.timestamps null: false
    end
  end
end
