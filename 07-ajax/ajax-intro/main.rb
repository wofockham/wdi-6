require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/fruit' do
  "mango"
end

get '/lotto' do
  sleep 3
  Random.rand(40).to_s
end
