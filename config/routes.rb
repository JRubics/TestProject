Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'
  resources :users
  resources :posts
  resources :user_sessions, only: [ :new, :create, :destroy ]
  # root to: 'users#index'
  get 'login'  => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'
end
