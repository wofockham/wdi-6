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

get '/process' do
  @result = "#{ params['hotdog_count']} #{ params['hotdogs']} hotdogs consumed on #{ params['start_date'] }"
  erb "MUAHAHAHAHAHAH GROWTH HACKING"
end

get '/search' do
  erb :search
end

get '/search_results' do
  erb "You searched for #{ params['search_string'] }"
end






