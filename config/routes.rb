RailsScreenshots::Application.routes.draw do
  root 'home#index'

  get 'dummy_animations' => 'dummy_animations#index', as: :dummy_animations
end
