class User < ApplicationRecord
  has_secure_password
  has_many :pictures
  has_many :arcgis
  has_many :shapes
  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :arcgis
  accepts_nested_attributes_for :shapes
end
