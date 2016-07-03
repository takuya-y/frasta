Rails.application.routes.draw do
  devise_for :users
  resources :shops, only: [:index,:show] do
    resources :reviews, only: :create
  end
  root 'shops#index'
end
