Rails.application.routes.draw do
  get 'divisions/show'
  get 'divisions/new'
  get 'divisions/create'
  get 'divisions/edit'
  get 'divisions/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
