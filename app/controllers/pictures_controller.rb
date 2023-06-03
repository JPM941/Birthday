class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to howmany_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def picture_params
    params.require(:picture).permit(:photo)
  end
end
