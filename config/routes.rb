Rails.application.routes.draw do
  devise_for :users
  # welcome = name of controller home = name of method in controller app/controllers/...
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
end
