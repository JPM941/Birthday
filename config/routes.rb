Rails.application.routes.draw do
  root to: "pages#home"
  get :howmany, to: "pages#howmany"
  get :informations, to: "pages#informations"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  # Defines the root path route ("/")
  # root "articles#index"
end
