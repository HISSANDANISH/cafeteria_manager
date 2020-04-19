Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :menus
  get "/", to: "home#index"
  resources :users
  get "/signin", to: "sessions#new", as: :new_session
  post "/signin", to: "sessions#create", as: :session
  post "/menu_items", to: "menu_items#create", as: :menu_items
  get "/menu_items/new", to: "menu_items#new", as: :new_menu_items
end
