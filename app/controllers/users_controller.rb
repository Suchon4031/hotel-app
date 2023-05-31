class UsersController < ApplicationController

  def show
    
    @user = User.find(params[:id])
    @hotels = @user.hotels.order(created_at: :desc)
  end
end
