class AuthController < ApplicationController
	def create
		user = User.find_by(username: params["username"])
		if user && user.authenticate(params["password"])
			payload = {user_id: user.id}
			token = encode(payload)
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
