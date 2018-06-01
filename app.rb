require 'sinatra'
require 'nature_remo'

get '/' do
  client = NatureRemo::Client.new
  client.get_temp.to_s
end
