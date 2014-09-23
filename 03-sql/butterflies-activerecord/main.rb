require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

require_relative 'butterfly'

before do
  @families = Butterfly.select(:family).uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/pry' do
  binding.pry
end

get '/' do
  @butterflies = Butterfly.all.order(:name).shuffle
  erb :index
end

get '/butterflies/families/:family' do
  @butterflies = Butterfly.where(:family => params[:family])
  erb :index
end

get '/butterflies/new' do
  erb :new
end

get '/butterflies/:id' do
  @butterfly = Butterfly.find params[:id]
  redirect to('/') unless @butterfly
  erb :show
end

post '/butterflies/:id' do
  butterfly = Butterfly.find params[:id]
  butterfly.name = params[:name]
  butterfly.image = params[:image]
  butterfly.family = params[:family]

  butterfly.save
  redirect to("/butterflies/#{ butterfly.id }")
end

get '/butterflies/:id/edit' do
  @butterfly = Butterfly.find params[:id]
  redirect to('/') unless @butterfly
  erb :edit
end

get '/butterflies/:id/delete' do
  butterfly = Butterfly.find params[:id]
  butterfly.destroy
  redirect to('/')
end

post '/butterflies' do
  butterfly = Butterfly.new
  butterfly.name = params[:name]
  butterfly.image = params[:image]
  butterfly.family = params[:family]

  butterfly.save
  redirect to('/')
end

get '/*' do
  redirect to('/')
end
