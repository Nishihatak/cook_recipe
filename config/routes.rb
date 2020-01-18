Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
  resources :users, only: [:show] 
  resources :recipes, only: [:show,:create,:new,:edit,:update]
end
