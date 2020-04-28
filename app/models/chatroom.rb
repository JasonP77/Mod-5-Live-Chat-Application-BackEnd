class Chatroom < ApplicationRecord
	belongs_to :user
	belongs_to :friend, class_name: "User"
	has_many :messages
end
