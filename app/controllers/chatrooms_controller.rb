class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      redirect_to chatroom_path(@chatroom.id)
    else
      render 'users/show', status: :unprocessable_entity
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
