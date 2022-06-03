Rails.application.routes.draw do
  # welcome = name of controller home = name of method in controller app/controllers/...
  root 'welcome#index'
end
