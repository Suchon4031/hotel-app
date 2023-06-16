class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @hotels = @user.hotels.order(created_at: :desc)
  end

  def likes
    @user = User.find(params[:id])
    likes = Like.where(user_id: @user.id).pluck(:hotel_id)
    @like_hotels = Hotel.find(likes)
  end
end
