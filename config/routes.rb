Rails.application.routes.draw do
  get 'users/show'
  root to: 'tweets#index'
  resources :tweets
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, :only => [:show, :edit, :update]
end
