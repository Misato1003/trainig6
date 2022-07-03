Rails.application.routes.draw do
  get 'posts/index'
  devise_for :users
  root to: 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  resources :posts
end
