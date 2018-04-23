class V1::ItemGroupsController < ApplicationController
	def index
		@itemGroups = ItemGroup.all
		render json: @itemGroups
	end
end