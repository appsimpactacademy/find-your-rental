Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  root 'home#index'

  namespace :admin do
    get :dashboard
  end

  namespace :owner do
    get :dashboard
    resources :properties
  end
end
