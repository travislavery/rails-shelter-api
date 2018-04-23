Rails.application.routes.draw do
	
  devise_for :users
  namespace :v1 do 
  	resources :item_groups
  	resources :users, only: [:create]
	resource :sessions, only: [:create, :destroy]
	resources :shelter_items
    resources :items
	resources :shelters do
		resources :items, only: [:index, :create]
	end
  end
end
