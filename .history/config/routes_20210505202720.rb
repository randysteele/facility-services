Rails.application.routes.draw do
  resources :clients do 
  resources :workorders
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  root 'clients#index'
end
