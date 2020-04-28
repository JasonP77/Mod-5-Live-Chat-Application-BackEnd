class UsersController < ApplicationController
	def index
		users = User.all
		render json: users, include: [:friends, :chatrooms]
	
	end

	def new
		user = User.new
	end

	def show

	end

	def create
		user = User.create(user_params)
		render json: user
	end

	def edit
    user = User.find(params[:id])
  end

	def update
			user = User.find(params[:id])
			user.update(user_params)
			render json: user, include: :friends
	end

	def chatapp
		
		token = request.headers["Authentication"]
		payload = decode(token)
		user = User.find(payload["user_id"])
		render json: user, include: [:friends, :chatrooms]
	end

	private
  def user_params
    params.require(:user).permit(:username, :password, :profile_img, :bio)
  end

end
