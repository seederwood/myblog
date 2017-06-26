class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    if @comment.save
      redirect_to post_path(@comment.post), notice: 'Comment was created successfully!'
    else
      redirect_to post_path(@comment.post), notice: 'Something went wrong.  Please try again.'
    end
  end

  def comment_params
    params.require(:comment).permit(:name, :body)
  end
end
