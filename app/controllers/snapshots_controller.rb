class SnapshotsController < ApplicationController

  def take_snapshot_imgkit
    preview = Preview.get_preview_by_imgkit

    preview.take_snapshot_imgkit normalized_dummy_animations_url

    redirect_to root_path
  end

  private

  def normalized_dummy_animations_url
    return dummy_animations_url unless dummy_animations_url.include? 'localhost:300'

    'http://0.0.0.0:3000' + dummy_animations_path
  end
end
