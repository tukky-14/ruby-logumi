Rails.application.routes.draw do
  devise_for :users
  root to: "gummies#index"
  resources :gummies
end
