class V1::ShelterItemsController < ApplicationController
	def create
		@shelter_item = ShelterItem.find_or_initialize_by(shelter_id: params[:shelter_id], item_id: params[:item_id])
		
		if @shelter_item.update(inventory: params[:inventory])
			render json: Shelter.find_by(id: params[:shelter_id])
		else
			head(:unprocessable_entity)
		end
	end

	def destroy
		@shelter_item = ShelterItem.find_by(id: params[:id])
		if @shelter_item
			@shelter = Shelter.find_by(id: @shelter_item.shelter.id)
			@shelter_item.destroy
			render json: @shelter
		else
			head(:unprocessable_entity)
		end
	end

	private

	def shelter_item_params
		params.require(:shelter_item).permit(:inventory, :shelter_id, :item_id)
	end
end
