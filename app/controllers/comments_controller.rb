class CommentsController < ApplicationController
  before_action :set_post, only: %i[new show create]

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.post_id = @post.id
    if @comment.save
      redirect_to post_path(@post), notice: "New Comment Created!"
    else
      render 'post/show', status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post_id = @comment.post_id
    @post = Post.find(@post_id)
    @comment.destroy
    redirect_to post_path(@post), status: :see_other, notice: "Comment Destroyed!"
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def comment_params
    params.require(:comment).permit(:content, :is_flag, :post_id, :user_id)
  end
end
