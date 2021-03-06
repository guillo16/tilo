Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  post 'procesar-pago', to: "payments#create"
  get 'pages/search', to: 'pages#search'
  get 'products/search', to: 'products#search'
  get '/info', to: 'pages#info'

  resources :divisions, except: :destroy
  resources :categories, except: :destroy
  resources :products
  resources :users, only: [:index, :show]
  resources :line_items
  resources :carts do
    collection do
      post :carts_delete
    end
  end
  resources :orders, only: [:index, :show, :create] do
    resources :payments, only: :new
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
