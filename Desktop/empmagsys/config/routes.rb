Rails.application.routes.draw do
  resources :leaves
  root 'employees#index'
  devise_for :employees
  resources :employees
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
