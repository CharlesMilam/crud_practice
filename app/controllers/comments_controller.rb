class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    comment = Comment.new(comment_params)
    comment.save
    redirect_to "/videos/#{comment_params[:video_id]}"
  end

  private
  def comment_params
    params.require(:comment).permit(:video_id, :content)
  end
end
