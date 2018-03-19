class V1::ItemsController < ApplicationController
	def index
		@items = Item.all
		render json: @items
	end

	def show
		@item = Item.find(params[:id])
	end

	def create
		shelter = Shelter.find_by(id: params[:shelter_id])
		@item = Item.find_or_initialize_by(item_params)
		shelter.items << @item
		if shelter.save
			render json: shelter, status: :created
		else
			render json: shelter.errors
			#head(:unprocessable_entity)
		end
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
