# encoding: utf-8

class ArcgisUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  include Cloudinary::CarrierWave

  def public_id
    return "arcgis/" + Cloudinary::Utils.random_public_id;
  end 

end
