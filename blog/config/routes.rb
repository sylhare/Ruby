Rails.application.routes.draw do
  # tells Rails to map requests to http://localhost:3000/welcome/index to the welcome controller's index action
  get 'welcome/index'

  # resources method which can be used to declare a standard REST resource
  resources :articles

  # tells Rails to map requests to the root of the application to the welcome controller's index action
  root 'welcome#index'
end
