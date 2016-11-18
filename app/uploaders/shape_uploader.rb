# encoding: utf-8

class ShapeUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  def public_id
    return "shapes/" + Cloudinary::Utils.random_public_id;
  end 
end
