Rails.application.routes.draw do
  root :to => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  get '/funny' => 'pages#lol'

  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'

  get '/calc/:x/:operator/:y' => 'calc#calculate'
end
