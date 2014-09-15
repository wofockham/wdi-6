require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "Coming soon"
end

get '/hello' do
  "OMFG!!! Hello world from Sinatra!"
end

get '/goodbye' do
  "Goodbye Cruel World"
end

# def hi(name)
#  "Hello #{ name }"
# end
get '/hi/:name' do
  "Hello #{ params[:name] }"
end

get '/hi/:first/:last' do
  "Your first name is #{ params[:first] } and your last name is #{ params[:last] }"
end

get '/hi/:first/:last/:age' do
  "Your first name is #{ params[:first] } and your last name is #{ params[:last] } and your age is #{ params[:age] }"
end

get '/calc/multiply/:x/:y' do
  result = params[:x].to_f * params[:y].to_f
  "the result is #{ result }"
end
