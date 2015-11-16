class DropSessions < ActiveRecord::Migration
  def up
    drop_table :sessions
  end

  def down
    create_table "sessions", force: :cascade do |t|
      t.timestamps null: false
    end
  end
end
