Rails.application.routes.draw do
  devise_for :users
  root to: "gummies#index"
  resources :gummies do
    resources :comments, only: :create
    resource :favorites, only: [:create, :destroy]
    collection do
      get 'search'
      get 'news'
      get 'about'
      get 'other'
    end
  end
  resources :users, only: :show
end
