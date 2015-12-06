module Reports
  class DailyService
    def call
      user_ids = User.with_daily_notification.pluck(:id)

      user_ids.each do |user_id|
        ReportsMailer.daily(user_id).deliver_now
      end
    end
  end
end
