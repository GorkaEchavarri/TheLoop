class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :region, :bio, :status, :date_of_birth, :region, :photo)
  end

end
