class Shape < ApplicationRecord
	mount_uploader :image, ShapeUploader
	belongs_to :user
end
