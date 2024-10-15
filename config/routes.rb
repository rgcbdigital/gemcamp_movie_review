Rails.application.routes.draw do
  root 'home#index'
  resources :movies, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end