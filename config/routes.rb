Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts
  resources :comments, only: %i[index new create edit update destroy]
  resources :communities
  resources :users, only: %i[index show edit update]
end
