require 'sinatra'
require 'sinatra/reloader'
require 'json'

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

get '/hi' do
  "<h2>Hello world</h2>"
end

get '/hi.json' do
  content_type :json
  { :word1 => 'Hello', :word2 => 'World' }.to_json
end

get '/time.json' do
  content_type :json
  { :now => Time.now, :lucky_number => Random.rand(100) }.to_json
end


