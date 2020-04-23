class UsersController < ApplicationController
	def index
		users = User.all
		render json: users, include: :friends
	end

	def new
		user = User.new
	end

	def show

	end

	def create
		user = User.create(username: params[:username], password: params[:password],  profile_img: nil)
		render json: user
	end

	def chatapp
		
		token = request.headers["Authentication"]
		payload = decode(token)
		user = User.find(payload["user_id"])
		render json: user, include: :friends
	end

end
