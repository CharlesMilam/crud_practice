class CommentsController < ApplicationController
  before_filter :load_media

  # def new
  #   @video = Video.new
  #   @comment = Comment.new
  # end
  def show
    @comment = Comment.find(params[:id])
  end

  def create
    #@media = Video.find(params[:video_id])
    #@comment = @media.comments.create(comment_params)
    comment = Comment.new
    comment.content = params[:comment][:content]
    comment.media = @media
    comment.save
    redirect_to :back
  end

  private
  def comment_params
    params.require(:comment).permit(:video_id, :content)
  end

  def load_media
    resource, id = request.path.split('/')[1,2]
    @media = resource.singularize.classify.constantize.find(id)
  end
end
