Rails.application.routes.draw do
  root "home_page#index"
  resources :books
  resources :admin_users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/show_books' => 'admin_users#show_books', :as => 'show_books'
end
