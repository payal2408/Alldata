Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  root "students#index"
  resources :demos
  resources :articles
  resources :suppliers do
  	resources :suppliers
  end
  resources :students do
  	resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
