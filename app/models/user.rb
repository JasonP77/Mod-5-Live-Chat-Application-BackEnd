class User < ApplicationRecord
	has_secure_password
	has_many :friends, class_name: "User"
	has_many :chatrooms
end
