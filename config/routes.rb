Rails.application.routes.draw do
  root 'static_pages#index'

  resources :users do
    resources :wards, only: [:create, :destroy, :update]
  end
  
  resources :sessions, only: [:create, :destroy]

  get "users/search", to: "users#search"
end
