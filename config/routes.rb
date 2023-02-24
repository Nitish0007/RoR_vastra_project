Rails.application.routes.draw do

  resources :line_items
  resources :carts

  get 'gallery/index'
  get 'gallery/checkout'
  post 'gallery/checkout'
  post 'gallery/search'
  get 'gallery/search'
  
  get 'admin/admin_login'
  post 'admin/admin_login'
  get 'admin/logout'
  
  resources :stores
  
  devise_for :users, controllers: {
    sessions: 'user/sessions'
  }

  get 'home/index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
