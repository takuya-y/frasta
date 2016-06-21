Rails.application.routes.draw do
  resources :shops, only: [:index,:show] do
    resources :reviews, only: :create
  end
end
