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
		if current_user.id == shelter.user.id
			@item = Item.find_or_initialize_by(item_params)
			shelter.items << @item
			if shelter.save
				render json: shelter, status: :created
			else
				render json: {errors: "Improper syntax, try again."}, status: 400
				#head(:unprocessable_entity)
			end
		else
			render json: {errors: "Unauthorized"}, status: 401
		end
	end

	def update
		@item = Item.find(params[:id])
		@item.update(item_params)
		render json: @item, status: :ok
	end

	def destroy
		@item = Item.find(params[:id])
		shelter = @item.shelter
		if shelter.user.id == current_user.id
			if @item.destroy
				head(:ok)
			else
				head(:unprocessable_entity)
			end
		end
	end

	private

	def item_params
		params.require(:item).permit(:name, :description)
	end
end
