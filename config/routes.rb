Rails.application.routes.draw do
  root to: 'pages#home'
  resources :tools do
    resources :rentals, only: %i[new create]
  end
  resources :rentals, only: %[index]
  devise_for :users
  namespace :my do
    resources :tools, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
