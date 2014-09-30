Rails.application.routes.draw do
  root :to => 'home#home'
  get '/numbers' => 'home#numbers'
  get '/text' => 'home#text'
  get '/assets' => 'home#assets'
  get '/url' => 'home#url'
end
