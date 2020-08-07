class Friendship < ApplicationRecord
 belongs_to :user
 belongs_to :friend, class_name: "User"

#  this model is a self refrencial model
end

