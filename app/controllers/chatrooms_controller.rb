class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.all
  end

  def new
    @chatroom = Chatroom.new
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.user = current_user
    @chatroom.receiver = current_user
    if @chatroom.save
      redirect_to chatrooms_path, status: :see_other, notice: "You successfully created a chat"
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end
end
