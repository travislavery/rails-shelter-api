class V1::ItemsController < ApplicationController
	def index
		@items = Item.all
		render json: @items, status: 201
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def create
		shelter = Shelter.find_by(id: params[:shelter_id])
		@item = shelter.items.find_or_intialize_by(item_params)
		shelter.save
		render json: shelter, status: :created
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		render json: @item, status: :ok
	end

	def destroy
		@item = Item.find(params[:id])
		if @item.destroy
			head(:ok)
		else
			head(:unprocessable_entity)
		end
	end

	private

	def item_params
		params.require(:item).permit(:name, :description)
	end
end
