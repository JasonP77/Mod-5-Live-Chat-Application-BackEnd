class User < ApplicationRecord
	has_secure_password
	has_many :friendships
	has_many :friends, through: :friendships
	has_many :chatrooms

	has_many :messages, through: :chatrooms

	# this method returns all chatrooms belong to specific user
	def chatrooms
		Chatroom.where(user_id: self.id ).or(Chatroom.where(friend_id: self.id))
	end
end
