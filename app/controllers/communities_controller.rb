class CommunitiesController < ApplicationController

  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
    @posts = Post.all
    @post = Post.new
    @membership = Membership.find_by(community_id: @community.id, user_id: current_user.id)
    @memberships_count = Membership.where(community_id: @community.id).count
  end

  def new
    @community = Community.new
  end

  def create
    @community = Community.new(community_params)
    @community.user_id = current_user.id
    @community.save
    redirect_to communities_path
  end

  def edit
    @community = Community.find(params[:id])
  end

  def update
    @community = Community.find(params[:id])
    @community.update(community_params)
    redirect_to community_path(@community)
  end

  def destroy
    @community = Community.find(params[:id])
    @community.destroy
    redirect_to communities_path, status: :see_other
  end

  def mycommunities
    @communities = Community.all
  end

  private

  def community_params
    params.require(:community).permit(:title, :description, :category, :user_id)
  end
end
