Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus
  get "/", to: "home#index"
  resources :users
  resources :orders
  resources :reports
  resources :menu_items
  get "/signin", to: "sessions#new", as: :new_session
  post "/signin", to: "sessions#create", as: :session
  delete "/signout", to: "sessions#destroy", as: :delete_sessions
  get "/dashboard", to: "dashboard#index", as: :dashboard
end
