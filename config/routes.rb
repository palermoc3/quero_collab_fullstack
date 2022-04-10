Rails.application.routes.draw do
  resources :most_ranked_posts
  resources :profiles
  resources :posts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
