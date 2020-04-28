class ChatroomsController < ApplicationController
	def index
		chatrooms = Chatroom.all
		render json: chatrooms
	end


	def new
		user = User.new
	end

	def create
		chatroom = Chatroom.create(chatroom_params)
		render json: chatroom
	end

	private
  def chatroom_params
    params.require(:chatroom).permit(:user_id, :friend_id, :title)
  end

end
