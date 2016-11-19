class ShapesController < ApplicationController
	def new
	end

	def create
		def create
		@user = current_user
		@user.shapes.create(image: params[:user][:shapes]['image'])
	end

	private
	def pictures_params
		params.require(:user).permit(:paassword, :password_confirmation,shapes_attributes: [:id, :image])
	end
	end
end
