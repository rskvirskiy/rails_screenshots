class ImgkitWorker
  include Sidekiq::Worker

  def perform(url)
    preview = Preview.get_preview_by_imgkit

    preview.take_snapshot_imgkit url
  end
end
