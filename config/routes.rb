Rails.application.routes.draw do
  devise_for :users

  resources :photos, only: [:show]

  root to: "home#index"
end
