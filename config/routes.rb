Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  resources :carts
  resources :cart_products
  
  resources :orders
  resources :order_products

  resources :products do 
     resources :tags
  end

  resources :favorite_profils

  get "search", to: "products#search"
end
