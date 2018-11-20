Rails.application.routes.draw do
  resources :friendships
  resources :listings
  devise_for :users
  root "users#my_portfolio"
  get 'my_portfolio' => "users#my_portfolio"
  get 'search_stocks' => 'stocks#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
