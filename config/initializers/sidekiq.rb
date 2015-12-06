require 'sidekiq/scheduler'

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL"), namespace: ENV['REDIS_NAMESPACE'] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL"), namespace: ENV['REDIS_NAMESPACE'] }
end

Sidekiq.schedule = YAML.load_file(Rails.root.join('config/sidekiq-scheduler.yml'))
