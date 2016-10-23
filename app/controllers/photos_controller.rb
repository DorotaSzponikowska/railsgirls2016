class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.valid?
      @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end

  def photo_params
    params.require(:photo).permit(:url, :caption, :rating)
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  def edit
    @photo = Photo.find(params[:id])
  end
  def update
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(photo_params)
      redirect_to photos_path
      else
      render 'edit'
    end

  end
end
