# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Friendship.destroy_all
Chatroom.destroy_all
Message.destroy_all

# below users are pre-made users 
jason = User.create(username: "Jason", password: "password", profile_img: "https://www.alphafm.com.br/assets/uploads/artistas/jason_mraz_273x340.jpg", bio: "Finally")
park = User.create(username: "Park", password: "password", profile_img: "https://www.fcgov.com/parks/img/city-park.jpg", bio: "The time is now")
apple = User.create(username: "apple", password: "password", profile_img: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/6/62/Apple_NewLeaf.png?width=640", bio: "Hi, Im Apple")

raymond = User.create(username: "raymond", password: "password", profile_img: "https://ih1.redbubble.net/image.1124077050.7958/flat,750x,075,f-pad,750x1000,f8f8f8.jpg", bio: "Can anyone help me ?")

judy = User.create(username: "judy", password: "password", profile_img: "https://vignette.wikia.nocookie.net/animalcrossing/images/d/d4/Judy_NH.png/revision/latest/top-crop/width/360/height/450?cb=20200318005830", bio: "I'm starving")

audie = User.create(username: "audie", password: "password", profile_img: "https://www.models-resource.com/resources/big_icons/35/34970.png", bio: "OMG!")

marshal = User.create(username: "marshal", password: "password", profile_img: "https://vignette.wikia.nocookie.net/animalcrossing/images/d/da/Marshal_NH.png/revision/latest/top-crop/width/360/height/450?cb=20200317171946", bio: "
Away")

coco = User.create(username: "coco", password: "password", profile_img: "https://i.pinimg.com/originals/82/3b/62/823b628e0c03a0791934b086188a7f89.png", bio: "Stay safe guys")

diana = User.create(username: "diana", password: "password", profile_img: "https://nookipedia.com/w/images/thumb/c/c2/Diana_NLa.png/175px-Diana_NLa.png", bio: "My name is Diana but Im not Diana")

merengue = User.create(username: "merengue", password: "password", profile_img: "https://www.models-resource.com/resources/big_icons/24/23583.png", bio: "I want some strawberry")

fauna = User.create(username: "fauna", password: "password", profile_img: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/6/61/Fauna_NewLeaf.png?width=640", bio: "I'm running low on food...Anyone???")

stitches = User.create(username: "stitches", password: "password", profile_img: "https://oyster.ignimgs.com/mediawiki/apis.ign.com/animal-crossing-new-horizons/8/85/Stitches_NewLeaf.png?width=325", bio: "Lmk If anyone wants to carpool")

molly = User.create(username: "molly", password: "password", profile_img: "https://vignette.wikia.nocookie.net/animalcrossing/images/0/05/EROhsqDU4AAMDYl.png/revision/latest/top-crop/width/360/height/450?cb=20200223114345&path-prefix=fr", bio: "Fishing time")

maple = User.create(username: "maple", password: "password", profile_img: "https://cdn140.picsart.com/305914228055211.png?type=webp&to=min&r=640", bio: "Hi, I'm Maple!")

tia = User.create(username: "tia", password: "password", profile_img: "https://vignette.wikia.nocookie.net/animalcrossing/images/e/ef/Tia_HD.png/revision/latest/top-crop/width/360/height/450?cb=20180518162559", bio: "Do or do not. There is no try")

julian = User.create(username: "julian", password: "password", profile_img: "https://vignette.wikia.nocookie.net/animalcrossing/images/0/00/Julian_HD.png/revision/latest/top-crop/width/360/height/450?cb=20180405151710", bio: "j...u...li..an?")









