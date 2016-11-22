Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'homes#index'

  get "signup" => "users#new", :as => "signup"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  resources :users
  resources :sessions
<<<<<<< HEAD
  resources :comments
  resources :shows do 
    resources :reservations
=======
  resources :concerts
  resources :shows do
    resources :comments
>>>>>>> 463cf185719d437d75b6844f62eedb7bfd1779f2
  end
end