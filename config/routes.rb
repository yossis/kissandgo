Rails.application.routes.draw do
  resources :duties
  resources :pupils
  resources :class_rooms
  resources :schools
  #devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}
  get 'dashboard', to: 'static#dashboard'
  root 'static#home'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
