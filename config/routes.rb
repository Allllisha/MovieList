Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :movies, only: [:index]
  resources :lists do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
