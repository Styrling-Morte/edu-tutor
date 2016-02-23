Rails.application.routes.draw do
  root 'non_user#index'

  resources :tutors

  resources :parents, only: [:new, :create, :destroy, :index, :show]

  resources :parents do
    resources :tutors, only: [:show]
  end

end
