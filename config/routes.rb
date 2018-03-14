Rails.application.routes.draw do
	
  devise_for :users
  namespace :v1 do 
  	resources :users, only: [:create]
	resources :sessions, only: [:create, :destroy]
	resources :shelter_items
    resources :items
	resources :shelters
  end
end
