Rails.application.routes.draw do
  devise_for :users
  root to: "gummies#index"
  resources :gummies do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end
