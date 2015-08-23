class CommentsController < ApplicationController
	before_action :authenticate_user!

  def create
  	@video = Video.find(params[:video_id])
  	@comment = @video.comments.create(comment_params)
  	redirect_to video_path(@video)
  end

  def show
  	@comment = Comment.find()

  private
    def comment_params
    	params.require(:comment).permit(:commenter, :body)
    end
end
