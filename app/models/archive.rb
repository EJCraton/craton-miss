class Archive < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "200x200>"  }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_presence :avatar, presence: true
end
