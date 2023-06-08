class PostsController < ApplicationController
  before_action :find_post, only: %i[show edit update destroy]

  def new
    @community = Community.find(params[:community_id])
    @post = Post.new
  end

  def create
    @post = Post.new(posts_params)
    @community = Community.find(params[:community_id])
    @post.community_id = @community.id
    @post.user_id = current_user.id

    if @post.save
      redirect_to post_path(@post), notice: "New Post Created!" #<<< take to post show path here
    else
      render 'new', status: :unprocessable_entity
    end

  end

  def show
    community_id = @post.community_id
    user_id = @post.user_id
    @community = Community.find(community_id)
    @user = User.find(user_id)
  end

  def edit
    @post = Post.find(params[:id])
    user_id = @booking.profile_id
    @profile = Profile.find(@profile_id)
  end

  def update
    @post = Post.update(post_params)
  end

  def destroy
  end

 private
  def find_post
    @post = Post.find(params[:id])
  end

  def posts_params
    params.require(:post).permit(:title, :content, :image, :is_flag)
  end
end
