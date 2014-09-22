require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require 'sqlite3'

get '/' do
  db = SQLite3::Database.new 'butterflies.db'
  butterflies = db.execute 'SELECT * FROM butterflies'
  erb butterflies.inspect
end
