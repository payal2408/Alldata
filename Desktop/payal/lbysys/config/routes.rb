Rails.application.routes.draw do
  resources :plans
  devise_for :admins, controllers: {
        sessions: 'admins/sessions'
      }
  devise_for :students, controllers: {
        sessions: 'students/sessions'
      }
   root "home_page#index"
    resources :students
     resources :books
     resources :admins
     post "plans/add_to_plan/:id", to: "plans#add_plan", as: "add_plan"
  delete "plans/remove_from_plan/:id", to: "plans#remove_plan", as: "remove_plan"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
