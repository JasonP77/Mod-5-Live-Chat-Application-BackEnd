class FriendshipsController < ApplicationController

	def index 
		friendships = Friendship.all
		render json: friendships
	end
def create 
		user = User.create(username: params[:username], password: params[:password], profile_img: nil)
		friendships = Friendship.create(user_id: params[:id], friend_id: user.id)
		render json: friendship
end

end
