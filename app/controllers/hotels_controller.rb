class HotelsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_hotel, only: [:show, :edit, :update]

  def index
    @hotels = Hotel.order("created_at DESC")
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
    @images = @hotel.images
  end

  def update
    if @hotel.update(hotel_params)
      redirect_to hotel_path
    else
      render :edit
    end
  end

  def destroy
    hotel = Hotel.destroy(params[:id])
    redirect_to root_path
  end

  private
  def hotel_params
    params.require(:hotel).permit(:name, :prefecture_id, :city, :text, {images: []}).merge(user_id: current_user.id)
  end

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

end
