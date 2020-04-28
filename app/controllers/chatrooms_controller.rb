class ChatroomsController < ApplicationController
	def index
		chatrooms = Chatroom.all
		render json: chatrooms, include: :messages
	end


	def new
		user = User.new
	end

	def create
		chatroom = Chatroom.find_or_create_by(chatroom_params)
		render json: chatroom
	end

	private
  def chatroom_params
    params.require(:chatroom).permit(:user_id, :friend_id, :title)
  end

end
