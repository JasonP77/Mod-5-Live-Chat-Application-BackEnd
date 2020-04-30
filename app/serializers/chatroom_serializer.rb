class ChatroomSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :friend_id, :title
  belongs_to :user
  belongs_to :friend, class_name: "User"
  has_many :messages

  
end
