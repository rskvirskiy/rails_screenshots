class HomeController < ApplicationController

  def index
    @previews = Preview.all
  end
end
