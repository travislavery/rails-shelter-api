class V1::UsersController < ApplicationController
	def create
		if @user = User.create(user_params)
			render json: @user, status: 201
		else 
			render json: {errors: "Unable to sign up, try again."}, status: 403
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation)
	end
end