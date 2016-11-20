Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root 'users#index'

  get "signup" => "users#new", :as => "signup"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"

  resources :users
  resources :sessions
  resources :comments
  resources :concerts
=======
  root 'homes#index'
  resources :homes
>>>>>>> 02a70c14ab17e38a8e28b610db60dce9770eebab
end
