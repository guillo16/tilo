Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'procesar-pago', to: "payments#create"
  get 'pages/search', to: 'pages#search'
  get 'products/search', to: 'products#search'

  resources :divisions, except: :destroy
  resources :categories, except: :destroy
  resources :products
  resources :users, only: [:index, :show]
  resources :line_items
  resources :carts

  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
