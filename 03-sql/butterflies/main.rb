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

get '/butterflies/:id' do
  query = "SELECT * FROM butterflies WHERE id=#{params['id']}"
  @butterfly = query_db query
  @butterfly = @butterfly.first # Strip off the array.
  redirect to('/') unless @butterfly
  erb :show
end

post '/butterflies/:id' do
  query = "UPDATE butterflies SET name='#{params['name']}', image='#{params['image']}', family='#{params['family']}' WHERE id=#{params['id']}"
  query_db query
  redirect to("/butterflies/#{params['id']}")
end

get '/butterflies/:id/edit' do
  query = "SELECT * FROM butterflies WHERE id=#{params['id']}"
  @butterfly = query_db query
  @butterfly = @butterfly.first
  redirect to('/') unless @butterfly
  erb :edit
end

get '/butterflies/:id/delete' do
  query = "DELETE FROM butterflies WHERE id=#{params['id']}"
  query_db query
  redirect to('/')
end

post '/butterflies' do
  query = "INSERT INTO butterflies (name, image, family) VALUES ('#{params['name']}', '#{params['image']}', '#{params['family']}')"
  query_db query
  redirect to('/')
end

get '/*' do
  redirect to('/')
end

def query_db(query)
  puts "Preparing to execute query: #{ query }"
  db = SQLite3::Database.new 'butterflies.db'
  db.results_as_hash = true
  result = db.execute query
  db.close
  result
end