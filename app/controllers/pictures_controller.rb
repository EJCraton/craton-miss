class PicturesController < ApplicationController
	def new
		
	end

	def create
		@user = current_user
		@user.pictures.create(image: params[:user][:pictures]['image'])
	end

	private
	def pictures_params
		params.require(:user).permit(:paassword, :password_confirmation,pictures_attributes: [:id, :image])
	end
end
