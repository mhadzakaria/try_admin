class ImageUploader < CarrierWave::Uploader::Base
	include Cloudinary::CarrierWave

  def size_range
    0..1.megabytes
  end

  version :extra_small do
    process :eager => true
    process :resize_to_fit  => [100, 150]
  end

  version :thumbnail do
    process :eager => true
    process :resize_to_fit  => [250, 150]
  end

  version :small do
    process :eager => true
    process :resize_to_fill => [260, 175]
  end

  version :medium do
    process :eager => true
    process :resize_to_fill => [500, 440]
  end

  version :large do
    process :eager => true
    process :resize_to_fill => [800, 400]
  end

  version :custom do
    process :eager => true
    process :resize_to_fill => [360, 300]
  end

end
