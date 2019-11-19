Rails.application.routes.draw do
  get 'rentals/index'
  get 'rentals/show'
  get 'rentals/new'
  get 'rentals/create'
  get 'rentals/edit'
  get 'rentals/update'
  get 'rentals/destroy'
  resources :tools
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
