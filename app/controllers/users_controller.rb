class UsersController < ApplicationController
  before_action :set_user

  def show
    @hotels = @user.hotels.order(created_at: :desc)
  end

  def likes
    likes = Like.where(user_id: @user.id).pluck(:hotel_id)
    @like_hotels = Hotel.find(likes)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
