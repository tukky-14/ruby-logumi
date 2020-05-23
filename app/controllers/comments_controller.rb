class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      respond_to do |format|
        format.json
      end
    else
      redirect_to "/gummies/#{@comment.gummy.id}"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, gummy_id: params[:gummy_id])
  end
end
