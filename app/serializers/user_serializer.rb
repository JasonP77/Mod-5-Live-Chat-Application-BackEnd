class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :profile_img, :bio
  # has_many :friendships
	has_many :friends, through: :friendships
	has_many :chatrooms
	has_many :messages, through: :chatrooms
end
