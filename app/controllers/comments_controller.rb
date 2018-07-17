class CommentsController < ApplicationController

  def new
    @comment = Comment.new(post_id: params[:post_id])
  end

  def edit
    @comment = Comment.find(params[:id])
    @comment.is_approved = "y"

    @comment.save

    CommentMailer.with(comment: @comment).approved_email.deliver!
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    CommentMailer.with(comment: @comment).denied_email.deliver!
    redirect_to post_path(@comment.post)
  end

  def create
    # debugger
    # binding.pry
    # be rails c
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.is_approved = "n"

    if @comment.save
      redirect_to post_path(@comment.post)
    else
      render :new
    end
  end

  def comment_params
    params.require(:comment).permit(:text, :post_id, :user_id, :is_approved)
  end
end
