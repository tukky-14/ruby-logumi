Rails.application.routes.draw do
  devise_for :users
  root to: "gummies#index"
  resources :gummies do
    resources :comments, only: :create
  end
end
