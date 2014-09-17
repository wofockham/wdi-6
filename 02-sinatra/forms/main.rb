require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :forms
end

get '/about' do
  erb :about
end

get '/faq' do
  erb :faq
end