class AuthController < ApplicationController

		# this file controlls user authentication and user informations
		# this will show "foudn user....." if succesfully logged in / will show "error, ..." if something goes wrong
		# double check encoding and decoding
		# check below attributes if they are in proper format
	def create
		user = User.find_by(username: params["username"])
		if user && user.authenticate(params["password"])
			payload = {user_id: user.id}
			token = encode(payload)
			friends = {friends: (JSON.parse(user.friends.to_json))}
			chatrooms = {chatrooms: (JSON.parse(user.chatrooms.to_json))}
			user = JSON.parse(user.to_json).merge(friends).merge(chatrooms)
			render json: {
				message: "found user, logging in... ",
				user_data: user,
				error: false,
				token: token
			}
		else
			render json: {
				message: "error, can't log in",
				error: true
			} 
		end
	end
end
