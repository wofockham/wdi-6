Rails.application.routes.draw do
  root :to => 'planets#index'
  get '/planets' => 'planets#index'
  get '/planets/new' => 'planets#new'
  post '/planets' => 'planets#create'
  get '/planets/:id' => 'planets#show', :as => 'planet'
  post '/planets/:id/delete' => 'planets#destroy', :as => 'planet_delete'
end
