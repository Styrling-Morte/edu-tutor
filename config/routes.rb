Rails.application.routes.draw do
  root 'static_pages#index'

  resources :users do
    resources :wards, only: [:create, :destroy, :update]
    resources :tutor_details
  end

  resources :sessions, only: [:create, :destroy]

  get "tutor_details/search", to: "tutor_details#search"
  get "/generate_ward_page", to: "wards#generate_page"
end
