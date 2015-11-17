Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :papers
  resources :documents
  resources :employees
end
