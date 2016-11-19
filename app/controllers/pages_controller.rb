class PagesController < ApplicationController
 	before_action :authorize, except: [:index]
  def index
  end

  def upload
  	@user = current_user
  end

  def create
		@user = current_user
		@user.build_pictures

	end

	private
	def pictures_params
		params.require(:user).permit(pictures_attributes: [:id, :image[]])
	end
end
