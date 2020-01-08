Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#index'
  get 'hey', to: 'homes#hey'
  get 'itslit',  to: 'homes#itslit'
  get 'invalidinformation', to: 'homes#invalidinformation'
  resources :ekbdps
  devise_for :users
end
