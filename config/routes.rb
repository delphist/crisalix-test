Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  namespace :patients do
    resources :appointments, only: %i[index show new create]
    resources :doctors, only: [:index]
  end

  namespace :doctors do
    resources :appointments, only: %i[index show]
  end

  root to: 'home#index'
end
