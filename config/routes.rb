Rails.application.routes.draw do
  devise_for :users
  root to: "gummys#index"
  resources :gummys
end
