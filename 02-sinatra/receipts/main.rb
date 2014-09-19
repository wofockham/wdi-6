require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :new
end

post '/' do
  erb :receipt
end
