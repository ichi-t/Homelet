require 'sinatra'
require 'nature_remo'

get '/aircon' do
  client = NatureRemo::Client.new
  client.get_temp.to_s
end

get '/aircon/on' do
  client = NatureRemo::Client.new
end
