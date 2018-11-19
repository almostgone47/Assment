Rails.application.routes.draw do
  resources :friendships
  resources :listings
  devise_for :users
  root "listings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
