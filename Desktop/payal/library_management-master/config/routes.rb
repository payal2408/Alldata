Rails.application.routes.draw do


 devise_for :secures
  devise_for :admin

 namespace:'admin' do
   root "books#index"
   resources :books
   resources :plans
    # get "/admins", to: "admins#index"
  end

  root "books#index"
  resources :books, :only => [:index, :show]

  get "/homes", to: "homes#index"
  

end
  