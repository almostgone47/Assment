Rails.application.routes.draw do
  resources :friendships
  resources :listings
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root "users#my_portfolio"
  get 'my_portfolio' => "users#my_portfolio"
  get 'search_stocks' => 'stocks#search'
  resources :user_stocks, only: [:create, :destroy]
  get 'my_friends' =>  "users#my_friends"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
