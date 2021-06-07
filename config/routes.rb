Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'dashboard/index'
  root to: "home#index"

  devise_for :users

  get '/clients/index'
  get '/clients/new', to: 'clients#new'
  get '/clients/edit'
  get '/clients/delete'
  # are these routes covered by 'resources: clients' ?

  get '/clients/:id', to: 'clients#show'

  post '/clients/new', to: 'clients#create'

  resources :clients
end
