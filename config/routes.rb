Rails.application.routes.draw do
  get 'users/index'
  get 'users/show/:id' => 'users#show'
  get 'users/new'
  post 'users' => 'users#create'

  get 'users/:id/edit' => 'users#edit'
  patch 'users/:id' => 'users#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
