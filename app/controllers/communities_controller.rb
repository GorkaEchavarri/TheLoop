class CommunitiesController < ApplicationController


  def index
    @communities = Community.all
  end

  def show
    @community = Community.find(params[:id])
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

  private

  def community_params
    params.require(:community).permit(:title, :description, :category, :user_id)
  end
end
