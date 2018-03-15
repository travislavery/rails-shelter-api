class V1::ShelterItemsController < ApplicationController
	def update
		@shelter_item = ShelterItem.find_or_initialize_by(shelter_id: params[:shelter_id], item_id: params[:item_id])
		
		if @shelter_item.update(shelter_item_params)
			head(201)
		else
			head(:unprocessable_entity)
		end
	end

	private

	def shelter_item_params
		params.require(:shelter_item).permit(:inventory, :shelter_id, :item_id)
	end
end
