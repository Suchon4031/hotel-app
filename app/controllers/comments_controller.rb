class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @hotel = Hotel.find(params[:hotel_id])
    if @comment.save
      CommentChannel.broadcast_to @hotel, { comment: @comment, user: @comment.user }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, hotel_id: params[:hotel_id])
  end
end
