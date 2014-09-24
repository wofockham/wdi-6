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
require_relative 'plant'

before do
  @families = Butterfly.select(:family).uniq
end

after do
  ActiveRecord::Base.connection.close
end

get '/pry' do
  binding.pry
end

###############################################################################
# BUTTERFLIES #################################################################
###############################################################################

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

###############################################################################
# PLANTS ######################################################################
###############################################################################

get '/plants' do
  @plants = Plant.all
  erb :plants_index
end

get '/plants/new' do
  erb :plants_new
end

post '/plants' do
  plant = Plant.new
  plant.name = params[:name]
  plant.image = params[:image]
  plant.save

  redirect to('/plants')
end

get '/plants/:id' do
  @plant = Plant.find params[:id]
  redirect to('/plants') unless @plant
  erb :plants_show
end



# get '/*' do
#   redirect to('/')
# end

