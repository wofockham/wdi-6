Rails.application.routes.draw do
  resources :fruits, :only => [:index]
end
