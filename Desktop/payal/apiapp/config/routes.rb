Rails.application.routes.draw do
  root "clients#index"
  resources :tickets
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
