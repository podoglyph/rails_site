Rails.application.routes.draw do

  root to: "home#index"

  post "/login", to: "sessions#create"
  delete "/login", to: "sessions#destroy"

  namespace :admin do
    resources :dashboard, only: [:index]
    resources :articles
  end

  resources :articles, only: [:index, :show]

end
