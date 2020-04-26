class FriendshipsController < ApplicationController

	def index 
		friendships = Friendship.all
		render json: friendships
	end
def create 
		user = User.create(username: params[:username], password: params[:password], profile_img: nil)
		friendship = Friendship.create(user_id: params[:user_id], friend_id: params[:friend_id])
		render json: friendship
end

end
