Rails.application.routes.draw do
  # # get 'items/create'
  # # get 'items/update'
  # # get 'items/index'
  # # get 'items/show'
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/items', to: 'items#index', as: 'items'

  # #Handle the get request of /items 
  # #send it to the items controller to the method index
  # # specifiy path in the future I want to reference it as items_path

  # get '/items/new', to: 'items#new', as: 'new_item'
  # get '/items/:id', to: 'items#show', as: 'item'
  # #Because of the id, rails knows that it has to take an argument of the actual item object so it can get the id

  # get '/items/:id/edit', to: 'items#edit', as: 'edit_item'
  # delete '/items/:id', to: 'items#destroy'

  # post '/items', to: 'items#create'
  # patch '/items/:id', to: 'items#update'

  resources :items
end
