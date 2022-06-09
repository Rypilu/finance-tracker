Rails.application.routes.draw do
  resources :user_stocks, only: [:create]
  devise_for :users
  # welcome = name of controller home = name of method in controller app/controllers/...
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
