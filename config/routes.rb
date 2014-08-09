RailsScreenshots::Application.routes.draw do
  root 'home#index'

  get 'dummy_animations' => 'dummy_animations#index', as: :dummy_animations

  get 'take_snapshot_imgkit' => 'snapshots#take_snapshot_imgkit', as: :take_snapshot_imgkit
end
