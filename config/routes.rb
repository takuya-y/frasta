Rails.application.routes.draw do
  resources :shops, only: [:index,:show]
end
