Rails.application.routes.draw do
  root 'non_user#index'

  resources :tutors, :parents
end
