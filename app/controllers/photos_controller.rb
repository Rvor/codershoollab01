class PhotosController < ApplicationController
  def index
    @photos = Photo.order(:id).page params[:page]
  end
end
