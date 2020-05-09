Rails.application.routes.draw do




  #active admin urls
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  #categories controller
  resources :categories

  #items controller
  resources :items

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # a user could sign up multiple times
  resources :users

  #users can only make one session
  resource :session

  get "about", to: "pages#about"

  root "pages#home"


end
