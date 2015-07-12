class AddEmailToSessions < ActiveRecord::Migration
  def change
    add_column :sessions, :email, :string
    add_column :sessions, :password, :string
    add_column :sessions, :remember_me, :integer
  end
end
