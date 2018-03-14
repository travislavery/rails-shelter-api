Rails.application.routes.draw do
	
  #devise_for :users
  resources :sessions, only: [:create, :destroy]
  resources :shelter_items
  resources :items
  resources :shelters
end
