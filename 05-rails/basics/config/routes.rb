Rails.application.routes.draw do
  root :to => 'pages#welcome'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'

  get '/auto/:color' => 'auto#color'
  get '/auto/:hp/:torque' => 'auto#engine'
end
