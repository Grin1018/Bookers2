Rails.application.routes.draw do
  devise_for :users
  #get 'homes/top'
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:show, :edit]
  root to: 'homes#top'
  get "home/about" => "homes#new", as:'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
