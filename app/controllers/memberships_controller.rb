class MembershipsController < ApplicationController
  def create
    @user = current_user
    @community = Community.find(params[:community_id])
    @membership = Membership.new(user_id: @user.id, community_id: @community.id)
    @membership.save
    redirect_to "/communities/show"
  end
end
