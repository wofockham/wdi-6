Rails.application.routes.draw do
  root :to => 'tasks#index'
  resources :tasks

  # JSON actions
  post '/tasks/:id/complete' => 'tasks#complete'
  post '/tasks/:id/uncomplete' => 'tasks#uncomplete'

  get '/about' => 'pages#about'
  get '/ajaxdemo' => 'pages#ajaxdemo'

  get '/time' => 'pages#time'
end
