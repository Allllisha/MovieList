Rails.application.routes.draw do
  resources :movies, only: [:index]
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy ]
   end
   root to: 'lists#index'
    resources :lists, except: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
