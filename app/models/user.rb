class User < ApplicationRecord
	has_secure_password
	has_many :friendships
	has_many :friends, through: :friendships
	has_many :chatrooms
	has_many :messages, through: :chatrooms
end
