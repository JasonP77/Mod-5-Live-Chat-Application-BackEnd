class UsersController < ApplicationController
	def index
		user = User.all
		render json: user
	end

	def new
		user = User.new
	end

	def create
		user = User.create(username: params[:username], password: params[:password],  profile_img: nil)
		render json: user
	end

	def chatapp
		
		token = request.headers["Authentication"]
		payload = decode(token)
		user = User.find(payload["user_id"])
		render json: user
	end

end
