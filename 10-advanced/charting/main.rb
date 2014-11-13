require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get '/morris' do
  erb :morris
end