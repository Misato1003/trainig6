Rails.application.routes.draw do
  devise_for :users
  root to: 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events
  resources :posts
  resources :resovesions
  
  #いいね機能(登録)
  post 'like/:id' => 'likes#create', as: 'create_like'
  
  #いいね機能（解除）
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
end
