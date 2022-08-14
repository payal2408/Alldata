Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :admins
  resources :students
  get 'home_page/index'
	root "home_page#index"
	resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
