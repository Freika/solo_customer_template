# frozen_string_literal: true

require 'sidekiq'
require 'sidekiq/web'
require 'sidekiq/cron/web'

sidekiq_config = { url: ENV.fetch('REDIS_URL', '') }

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config

  schedule_file = 'config/schedule.yml'

  if File.exist?(schedule_file)
    Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
  end
end

Sidekiq.configure_client { |config| config.redis = sidekiq_config }
