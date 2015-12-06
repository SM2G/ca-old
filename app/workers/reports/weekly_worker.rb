module Reports
  class WeeklyWorker
    include Sidekiq::Worker

    def perform
      Reports::WeeklyService.new.call
    end
  end
end
