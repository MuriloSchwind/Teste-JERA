Rails.application.routes.draw do
  root to: 'dashboard#index'
  devise_for :users

  resources :find_movies, only: :index
  resources :my_movies, only: [:index, :create, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
