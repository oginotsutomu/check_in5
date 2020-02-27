Rails.application.routes.draw do
  get 'homes/index'
  resources :recipes, only: [:index, :show, :new, :create]

  get 'recipes/show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'rooms/index'
  get 'rooms/new'
  resources :rooms, only: [:index, :show, :new, :create, :edit, :update, :destroy]


  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
