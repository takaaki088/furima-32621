Rails.application.routes.draw do
  devise_for :users
  root to: "registrations#create"
  resources :users, only: [:edit, :update]
end
