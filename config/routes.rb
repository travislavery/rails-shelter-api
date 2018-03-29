Rails.application.routes.draw do
	
  devise_for :users
  namespace :v1 do 
  	resources :users, only: [:create]
	resource :sessions, only: [:create, :destroy]
	resources :shelter_items, only: [:create, :destroy]
    resources :items, only: [:index, :show, :update, :destroy, :create]
	resources :shelters do
		resources :items, only: [:index, :create]
	end
  end
end
