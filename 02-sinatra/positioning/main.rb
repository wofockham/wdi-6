require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :home
end