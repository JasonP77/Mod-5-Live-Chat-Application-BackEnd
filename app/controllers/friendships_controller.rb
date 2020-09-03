class FriendshipsController < ApplicationController
#  this method will return all friendships data
	def index 
		friendships = Friendship.all
		render json: friendships
	end

	# this method creates a relationship between two diffrent users
	# it also shows all friend relationships upon creation
	# make sure to specific what needs to be rendered in "render json:"
def create 
		user = User.create(username: params[:username], password: params[:password], profile_img: nil)
		friendship = Friendship.create(user_id: params[:user_id], friend_id: params[:friend_id])
		render json: friendship
end

end
