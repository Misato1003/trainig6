Rails.application.routes.draw do
  devise_for :users
  root to: 'home#page'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #検索機能
  resources :events do
    collection do
      get 'search'
    end
  end
  
  #いいね機能(登録)
  post 'like/:id' => 'likes#create', as: 'create_like'
  
  #いいね機能（解除）
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  
  #お気に入り機能（登録）
  post 'favorite/:id' => 'favorites#create', as: 'create_favorite'
  delete 'favorite/:id' => 'favorites#destroy', as: 'destroy_favorite'
  
  #お気に入り済みのイベントの表示
  resources :users, only: [:show] do
    get :favorites, on: :collection
  end
  
  resources :events
  resources :posts
  resources :resovesions
end
