require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'

get '/' do
  @butterflies = query_db 'SELECT * FROM butterflies'
  erb :index
end

get '/butterflies/new' do
  erb :new
end

post '/butterflies' do
  query = "INSERT INTO butterflies (name, image, family) VALUES ('#{params['name']}', '#{params['image']}', '#{params['family']}')"
  query_db query
  redirect to('/')
end

def query_db(query)
  db = SQLite3::Database.new 'butterflies.db'
  db.results_as_hash = true
  result = db.execute query
  db.close
  result
end