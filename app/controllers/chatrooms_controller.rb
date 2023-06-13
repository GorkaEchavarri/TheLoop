class ChatroomsController < ApplicationController

  def show
    # @chatrooms = Chatroom.all
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    # @user_messages = Message.where(user_id: current_user.id, chatroom_id: @chatroom.id)
    # @chatroom_ids = Message.where(user_id: (current_user || @user.id)).pluck(:chatroom_id)
    # @chatrooms = Chatroom.where(id: @chatroom_ids)
    # @friend_messages = @chatroom.messages.where.not(user_id: current_user.id).pluck(:user_id).first
    @friend = User.find(@chatroom.receiver_id)
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    # @user = User.find(params[:user_id])
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.asker_id = current_user.id

    if @chatroom.save
      redirect_to chatroom_path(@chatroom.id)
    else
      render 'users/show', status: :unprocessable_entity
    end

  end

  def index
    @chatrooms = Chatroom.all
  end

  private


  def chatroom_params
    params.require(:chatroom).permit(:name, :receiver_id)
  end
end
