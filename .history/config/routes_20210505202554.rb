Rails.application.routes.draw do
  resources :clients
  resources :workorders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'clients#index'



end
