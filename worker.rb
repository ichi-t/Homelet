require './app'
require 'sidekiq'
require 'sidekiq-cron'

class StoreWorker
  include Sidekiq::Worker
  def perform(value)
    Metric.create(value: value)
  end
end

# Sidekiq::Cron::Job.create(name: 'Worker - every 5min', cron: '*/1')
StoreWorker.perform_async(23)
