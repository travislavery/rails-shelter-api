class V1::SheltersController < ApplicationController
	def index
		@shelters = Shelter.all
		render json: @shelters, status: :ok
	end

	def show
		@shelter = Shelter.find(params[:id])
	end

	def create
		@shelter = Shelter.create(shelter_params)
		
		@shelter.save
		render json: @shelter, status: :created
	end

	def update
		@shelter = Shelter.find(params[:id])
		@shelter.update(shelter_params)
		render json: @shelter, status: :ok
	end

	def destroy
		@shelter = Shelter.find(params[:id])
		if @shelter.destroy
			head(:ok)
		else
			head(:unprocessable_entity)
		end
	end

	private

	def shelter_params
		params.require(:shelter).permit(:name, :address, :phone_number)
	end
end
