require 'pry'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :new
end

post '/' do
  db = File.open('receipts.csv', 'a+')
  db.puts params.values.join(',')
  db.close
  erb :receipt
end

get '/all' do
  db = File.open('receipts.csv', 'r')

  # Convert "lines" into an array of arrays so we can close the file.
  @receipts = db.map do |line|
    line.split ','
  end

  db.close
  erb :all
end