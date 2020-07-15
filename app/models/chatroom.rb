class Chatroom < ApplicationRecord
	belongs_to :user, foreign_key: "user_id", class_name: "User"
	belongs_to :friend, foreign_key: "friend_id", class_name: "User"
	has_many :messages

	# this method overrides users method and returns all participating users in specific chatroom.
	
	def users
		User.where(id: self.user_id).or(User.where(id: self.friend_id))
	end

end
