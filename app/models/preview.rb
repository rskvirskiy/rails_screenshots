class Preview < ActiveRecord::Base
  PREVIEW_BY_IMGKIT_ID = 1

  mount_uploader :image, ImageUploader

  def take_snapshot_imgkit(url)
    file = Tempfile.new(["template_#{self.id.to_s}", 'png'], 'tmp', encoding: 'ascii-8bit')
    png = IMGKit.new(url, javascript_delay: 1000).to_png

    file.write(png)
    file.flush

    self.image = file
    self.image.recreate_versions!
    self.save

    file.unlink
  end

  def self.get_preview_by_imgkit
    Preview.find PREVIEW_BY_IMGKIT_ID
  end
end
