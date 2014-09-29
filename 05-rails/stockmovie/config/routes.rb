Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'


  get '/stock' => 'stock#index'
  get '/stock/lookup' => 'stock#lookup'


  get '/movies' => 'movies#index'
  get '/movies/lookup' => 'movies#lookup'
end
