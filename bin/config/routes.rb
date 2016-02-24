Rails.application.routes.draw do
  root 'static_pages#index'

  # route for testing pages that are not accessable
  # Enter the route to test and go to localhost/test
  # get '/test', to: 'ENTER ROUTE TO TEST', as: 'test'

  get '/login_parents', to: 'parents#login'
  get '/login_tutors', to: 'tutors#login'
  get '/signup_parents', to: 'parents#signup'
  get '/signup_tutors', to: 'tutors#signup'

  resources :tutors

  resources :parents, only: [:new, :create, :destroy, :index, :show]

  resources :parents do
    resources :tutors, only: [:show]
  end

end
