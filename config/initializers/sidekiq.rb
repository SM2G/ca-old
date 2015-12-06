require 'sidekiq/scheduler'
require 'sidekiq/web'
require 'sidekiq-scheduler/web'

Sidekiq.configure_server do |config|
  config.redis = { url: ENV.fetch("REDIS_URL"), namespace: ENV['REDIS_NAMESPACE'] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV.fetch("REDIS_URL"), namespace: ENV['REDIS_NAMESPACE'] }
end

Sidekiq.schedule = YAML.load_file(Rails.root.join('config/sidekiq-scheduler.yml'))

Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == ENV['SIDEKIQ_USERNAME'] && password == ENV['SIDEKIQ_PASSWORD']
end
