Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :communities do
    resources :posts, only: %i[new create]
    resources :memberships, only: :create
  end

  resources :searches, only: %i[index]

  resources :users, only: %i[index show edit update]

  resources :chatrooms, only: %i[index show new create] do
    resources :messages, only: :create
  end

  resources :posts, only: %i[show edit update destroy] do
    resources :comments, only: %i[index new create edit update]
    resources :post_upvotes, only: :create
  end

  get "communities/:id", to:"posts#new"
  post "communities/:id/post", to:"posts#create"

  patch "posts/:id/flag", to: "posts#is_flagged", as: :flag_post
  delete "post/:id", to: "posts#destroy", as: :delete_post

  get "flags", to: "posts#flags"
  delete "post/:id/delete", to: "comments#destroy", as: :delete_comment

  get "mycommunities", to: "communities#mycommunities", as: :my_communities


end
