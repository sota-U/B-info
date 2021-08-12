Rails.application.routes.draw do
  get 'users/show'
  root to: 'tweets#index'
  resources :tweets do
    resources :comments, only: :create
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, :only => [:show, :edit, :update, :destroy]
  resources :users do
    member do
      get 'check'
    end
  end
end
