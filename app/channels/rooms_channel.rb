class RoomsChannel < ApplicationCable::Channel
  
  # this file controlls chatrooms and sending and receiving messages
  def subscribed
    @room = Chatroom.find_by(id: params[:chatroom])
    stream_for @room
	end

   def received(data)
    RoomsChannel.broadcast_to(@room, {room: @room, user: @room.users, messages: @room.messages})
    byebug
  end
	
end