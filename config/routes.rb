Rails.application.routes.draw do
  devise_for :users

  resources :profiles
  resources :papers, only: [:index, :show, :edit, :update]
  resources :documents
  resources :employees

  namespace :account do
    root to: 'dashboard#show'

    resource :notification_settings, only: [:update]
  end
end
