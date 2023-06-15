class LikesController < ApplicationController
  before_action :set_hotel

  def create
    like = current_user.likes.build(hotel_id: params[:hotel_id])
    like.save
    render 'create.js.erb'
  end

  def destroy
    like = Like.find_by(hotel_id: params[:hotel_id], user_id: current_user.id)
    like.destroy
    render 'destroy.js.erb'
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

end
