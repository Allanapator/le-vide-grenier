Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#homePage'
  get '/home' => 'pages#home'
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  
  resources :carts
  resources :cart_products
  
  resources :orders do 
    resources :payments, only: :new
  end
  resources :order_products

  resources :products do 
    resources :tags
  end

  resources :favorite_profils

  get "search", to: "products#search"
end
