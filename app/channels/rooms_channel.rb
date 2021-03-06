class RoomsChannel < ApplicationCable::Channel
  
  # this file controlls chatrooms and sending and receiving messages
  def subscribed
    @room = Chatroom.find_by(id: params[:chatroom])
    stream_for @room
	end

  # this method takes care of all the users and messages that are sent and received in the chatroom.
  # all of the data needs to be in right format in order to make it work properly.
  # check front-end side files to see which data is passed.
   def received(data)
    RoomsChannel.broadcast_to(@room, {room: @room, user: @room.users, messages: @room.messages})
  end
	
end