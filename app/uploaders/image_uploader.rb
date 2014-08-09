class ImageUploader < CarrierWave::Uploader::Base

  storage :file

  version :thumb do
    process :resize_to_fill => [100,100]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
