class Picture < ApplicationRecord
	mount_uploader :image, PictureUploader
	belongs_to :user
	accepts_nested_attributes_for :user
end
