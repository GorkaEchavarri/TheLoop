class PostsController < ApplicationController
  before_action :find_post, only: %i[show update edit destroy is_flagged]

  def new
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @community = Community.find(params[:community_id])
    @post.community_id = @community.id
    @post.user_id = current_user.id

    if @post.save
      redirect_to post_path(@post), notice: "New Post Created!"
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    community_id = @post.community_id
    user_id = @post.user_id
    @community = Community.find(community_id)
    @user = User.find(user_id)
    @post = Post.find(params[:id])
    @comment = Comment.new
    @current_user = current_user
    @post_vote = PostUpvote.find_by(user_id: @current_user.id, post_id: @post)
    @posts_count = PostUpvote.where(post_id: @post.id).count
  end

  def edit
    community_id = @post.community_id
    @community = Community.find(community_id)
  end

  def update
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post), notice: "Post Updated!"
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  def destroy
    community_id = @post.community_id
    community = Community.find(community_id)
    @post.destroy
    redirect_to community_path(community)
  end

  def is_flagged
    @post.is_flag = true
    @post.save
    redirect_to post_path(@post), notice: "Post Flagged!"
  end

  def flags
    @posts = Post.all
  end

 private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :photo)
  end
end
