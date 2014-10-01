# == Route Map (Updated 2014-10-01 12:51)
#
#      Prefix Verb   URI Pattern                 Controller#Action
#     artists GET    /artists(.:format)          artists#index
#             POST   /artists(.:format)          artists#create
#  new_artist GET    /artists/new(.:format)      artists#new
# edit_artist GET    /artists/:id/edit(.:format) artists#edit
#      artist GET    /artists/:id(.:format)      artists#show
#             PATCH  /artists/:id(.:format)      artists#update
#             PUT    /artists/:id(.:format)      artists#update
#             DELETE /artists/:id(.:format)      artists#destroy
#       works GET    /works(.:format)            works#index
#             POST   /works(.:format)            works#create
#    new_work GET    /works/new(.:format)        works#new
#   edit_work GET    /works/:id/edit(.:format)   works#edit
#        work GET    /works/:id(.:format)        works#show
#             PATCH  /works/:id(.:format)        works#update
#             PUT    /works/:id(.:format)        works#update
#             DELETE /works/:id(.:format)        works#destroy
#

Rails.application.routes.draw do
  resources :artists, :works
end
