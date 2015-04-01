class HomeController < ApplicationController
  def index
    @photos = Photo.homepage
  end
end
