Rails.application.routes.draw do
  root :to => 'pages#index'
  get '/numbers' => 'lottery#numbers'
end
