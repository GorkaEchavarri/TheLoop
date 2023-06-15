class PostUpvotesController < ApplicationController
  def create
    @user = current_user
    @post = Post.find(params[:post_id])
    @post_upvote = PostUpvote.new(post_id: @post.id, user_id: @user.id)
    @post_upvote.save
    redirect_to post_path(params[:post_id])
  end
end
