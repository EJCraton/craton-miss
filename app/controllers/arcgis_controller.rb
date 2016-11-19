class ArcgisController < ApplicationController
	def new
	end

	def create
		@user = current_user
		@user.arcgis.create(image: params[:user][:arcgis]['image'])
	end

	private
	def pictures_params
		params.require(:user).permit(:paassword, :password_confirmation,arcgis_attributes: [:id, :image])
	end
end
