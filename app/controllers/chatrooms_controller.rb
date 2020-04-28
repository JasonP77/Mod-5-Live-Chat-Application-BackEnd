class ChatroomsController < ApplicationController
	def index
		chatrooms = Chatroom.all
		render json: chatrooms
	end

	def create
		chatroom = Chatroom.create(title: params[:title], user_id: params[:user_id], friend_id: params[:friend_id])
		render json: chatroom
	end
end
