class V1::SheltersController < ApplicationController
	def index
		@shelters = Shelter.all
		render json: @shelters
	end

	def show
		@shelter = Shelter.find(params[:id])
	end

	def create
		if current_user
			@shelter = current_user.shelters.build(shelter_params)
			@shelter.save
			render json: @shelter, status: :created
		else
			render json: {errors: 'Must be logged in to create a shelter'}, status: 401
		end
	end

	def update
		@shelter = Shelter.find(params[:id])
		if @shelter.user.id == current_user.id
			@shelter.update(shelter_params)
			render json: @shelter, status: :ok
		else
			render json: {errors: 'Unauthorized to edit'}, status: 401
		end
	end

	def destroy
		@shelter = Shelter.find(params[:id])
		if @shelter.user == current_user
			if @shelter.destroy
				head(:ok)
			else
				render json: {errors: 'Unable to find'}, status: 404
			end
		else
			render json: {errors: 'Unauthorized to delete'}, status: 401
		end
	end

	private

	def shelter_params
		params.require(:shelter).permit(:name, :address, :phone_number, :image)
	end
end
