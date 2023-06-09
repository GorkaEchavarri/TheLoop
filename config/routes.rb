Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :communities do
    resources :posts, only: %i[new create]
    # do
    #  resources :comments, only: %i[index new create edit update destroy]
    # end
  end

  resources :users, only: %i[index show edit update]


  resources :posts, only: %i[show edit update destroy] do
    resources :comments, only: %i[index new create edit update destroy]
  end

  patch "posts/:id/flag", to: "posts#is_flagged", as: :flag_post
  delete "post/:id", to: "posts#destroy", as: :delete_post
  get "mycommunities", to: "communities#mycommunities"

end
