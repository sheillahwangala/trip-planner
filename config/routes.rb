Rails.application.routes.draw do
  resources :users
  resources :stopovers, only: [:show, :create]
  resources :destinations, only: [:index, :show]
  resources :trips, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
