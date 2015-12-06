module Reports
  class DailyWorker
    include Sidekiq::Worker

    def perform
      Reports::DailyService.new.call
    end
  end
end
