class User < ApplicationRecord
  has_secure_password
  has_many :pictures
  accepts_nested_attributes_for :pictures
end
