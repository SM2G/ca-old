module Reports
  class WeeklyService
    def call
      user_ids = User.with_weekly_notification.pluck(:id)

      user_ids.each do |user_id|
        ReportsMailer.weekly(user_id).deliver_now
      end
    end
  end
end
