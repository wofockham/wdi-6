Rails.application.routes.draw do
  root :to => 'pages#home'

  get '/results' => 'pinterest#results'
end
