Rails.application.routes.draw do
  root :to => 'locations#index'
  get '/results' => 'locations#result'
end
