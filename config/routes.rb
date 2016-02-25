Rails.application.routes.draw do
  root 'static_pages#index'
  get '/edit_parents', to: 'users#edit'
  get '/search_pages', to: 'users#search'

  resources :users
  resources :sessions, only: [:create, :destroy]

end
  