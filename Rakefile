require 'sinatra/activerecord/rake'

namespace :db do
  task :load_config do
    require "./app"
  end
end

namespace :metrics do
  desc "store temperture"
  task :store do
    require "./app"
    c = NatureRemo::Client.new
    Metric.new(value: c.get_temp)
  end
end
