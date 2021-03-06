class UsersController < ApplicationController
	# it will show friends, chatrooms and messages belong to the user
	def index
		users = User.all
		# render json: users.includes(:friends, :chatrooms, :messages)
		render json: User.all.to_json(:include => 
		{:friends => {}, 
		:chatrooms => 
		{:include => {:messages => {}}
		}})
	end

	def new
		user = User.new
	end
	# this method will render specific user along with friends and chatrooms belong to the user.
	def show
		user = User.find(params[:id])
		render json: user, include: [:friends, :chatrooms]
	end

	def create
		user = User.create(username: params[:username], password: params[:password])
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

	# this method receives encrypted token and decode it
	def chatapp
		
		token = request.headers["Authentication"]
		payload = decode(token)
		user = User.find(payload["user_id"])
		# render json: user, include: [:friends, :chatrooms, :messages]
		render json: user.to_json(:include => 
		{:friends => {}, 
		:chatrooms => 
		{:include => {:messages => {}}
		}})
	end

	# strong params for creating a new user
	private
  def user_params
    params.require(:user).permit(:username, :password, :profile_img, :bio)
  end

end
