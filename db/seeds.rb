# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friendship.destroy_all

jason = User.create(username: "Jason", password: "password", profile_img: nil)
park = User.create(username: "Park", password: "password", profile_img: nil)
yolo = User.create(username: "yolo", password: "password", profile_img: nil)
friendship1 = Friendship.create(user_id: jason.id, friend_id: park.id)
friendship1 = Friendship.create(user_id: jason.id, friend_id: yolo.id)