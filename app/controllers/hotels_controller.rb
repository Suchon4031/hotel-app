class HotelsController < ApplicationController

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
    @hotel = Hotel.find(params[:id])
  end

  private
  def hotel_params
    params.require(:hotel).permit(:image, :name, :prefecture_id, :city, :text).merge(user_id: current_user.id)
  end
end
