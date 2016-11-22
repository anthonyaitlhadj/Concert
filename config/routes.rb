Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#index'

  get "signup" => "users#new", :as => "signup"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  resources :users
  resources :sessions

  resources :comments
  resources :shows do 
    resources :reservations
  end
  resources :concerts
  resources :shows do
    resources :comments
  end
  resources :concerts
  resources :shows do
    resources :comments
  end
  resources :shows do 
    resources :reservations
  end
end