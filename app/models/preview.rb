class Preview < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
