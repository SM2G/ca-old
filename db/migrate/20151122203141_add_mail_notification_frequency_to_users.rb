class AddMailNotificationFrequencyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mail_notification_frequency, :string, index: true
  end
end
