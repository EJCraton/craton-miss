class Arcgi < ApplicationRecord
	mount_uploader :image, ArcgisUploader
	belongs_to :user
end
