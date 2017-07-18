Rails.application.routes.draw do
  namespace :api do
    resources :beers
    resources :users, only: [:create]
  end
end
