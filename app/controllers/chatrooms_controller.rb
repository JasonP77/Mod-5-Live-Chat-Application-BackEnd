class ChatroomsController < ApplicationController

	# this method will return all chatrooms and messages for that specific chatroom
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
	# this method will render all messages and users that belong to specific chatroom
	def show
		chatroom = Chatroom.find(params[:id])
		# render json: chatroom, include: :messages
		render json: chatroom.to_json(:include => 
		{:messages => {}, 
		:users => {}
	})

	end
	# strong param for chatroom
	private
  def chatroom_params
    params.require(:chatroom).permit(:user_id, :friend_id, :title)
  end

end
