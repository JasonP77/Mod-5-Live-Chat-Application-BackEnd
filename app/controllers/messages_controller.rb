class MessagesController < ApplicationController
	 # this method will render all the messages
	def index
		messages = Message.all
		render json: messages
	end
	# this method finds specific chatroom and create a channel
	def create
		message = Message.new(message_params)
		chatroom = Chatroom.find(message_params["chatroom_id"])
		if message.save
				RoomsChannel.broadcast_to(chatroom, {
					room: chatroom,
					users: chatroom.users,
					messages: chatroom.messages
				})
		end
		render json: message
	end
	# this will render messages belong to the specific user with the ID
	# params id needs to be specified in the url and must be dynamic
	def show
		message = Message.find(params[:id])
		render json: message
	end

	# strong params are used when creating a new message
	private
  def message_params
    params.require(:message).permit(:user_id, :chatroom_id, :content, :time)
  end


end
