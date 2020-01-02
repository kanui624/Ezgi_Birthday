Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  resources :ekbdps, only: :create
  get 'show', to: 'homes#show'
  devise_for :users
end
