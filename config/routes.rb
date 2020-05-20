Rails.application.routes.draw do
  root to: "gummys#index"
  resources :gummys
end
