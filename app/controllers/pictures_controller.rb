class PicturesController < ApplicationController
	def new
	end

	def create
		@user = current_user
		category = params[:pictures][:category]
		title = params[:user][:pictures][:title]
		image = params[:user][:pictures]['image']
		description = params[:user][:pictures][:description]

		if category == 'pictures'
			@user.pictures.create(image: image, title: title, description: description)
		end

		if category == 'arcgis'
			@user.arcgis.create(image: image, title:
				title, description: description)
		end

		if category == 'shapes'
			@user.shapes.create(image: image, title: title, description: description)
		end
	end

	def delete
	end

	private
	def pictures_params
		params.require(:user).permit(:paassword, :password_confirmation,pictures_attributes: [:id, :image])
	end

	def arcgis_params
		params.require(:user).permit(:paassword, :password_confirmation,arcgis_attributes: [:id, :image])
	end

	def shapes_params
		params.require(:user).permit(:paassword, :password_confirmation,shapes_attributes: [:id, :image])
	end

	def is_category_sat?(category)
	end

	def is_category_arcgis?(category)
	end

	def is_category_shapes?(category)
	end
end
