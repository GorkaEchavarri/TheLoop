class MembershipsController < ApplicationController
  def create
    @user = current_user
    @community = Community.find(params[:community_id])
    @membership = Membership.new(user_id: @user.id, community_id: @community.id)
    redirect_to "/communities/show", status: :see_other, notice: "Loop Joined!" if @membership.save
  end
end
