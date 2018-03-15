class V1::SessionsController < ApplicationController
	def create
		user = User.where(email: params[:email]).first

		if user&.valid_password?(params[:password])
			render json: user, status: 201
		else 
			head(:unauthorized)
		end
	end

	def destroy
		if current_user
			current_user.authentication_token = nil
			if current_user.save
				head(:ok)
			else
				head(:unauthorized)
			end
		else
			head(401)
		end
	end

	private

	def expire_token
		current_user&.authentication_token = nil
	end
end
