Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'proposals#index'

  resources :proposals, only: [:new, :create] do
    resources :votes, only: :create
  end
end
