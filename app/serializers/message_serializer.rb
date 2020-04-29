class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chatroom_id, :content
  belongs_to :chatroom
end
