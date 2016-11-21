Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'reservations#index'

  resources :reservations

  root 'homes#index'

  get "signup" => "users#new", :as => "signup"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  resources :users
  resources :sessions
  resources :comments
  resources :concerts
  resources :shows
end