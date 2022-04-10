# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"Pedro")
User.create(name:"Laura")
User.create(name:"João")
User.create(name:"tiago")
User.create(name:"tiago")



Post.create(text: "oi1", keyword:"saudação", user_id:1)
Post.create(text: "oi2", keyword:"saudação", user_id:2)
Post.create(text: "oi3", keyword:"saudação", user_id:3)
Post.create(text: "oi4", keyword:"saudação", user_id:4)
Post.create(text: "oi5", keyword:"saudação", user_id:4)
Post.create(text: "oi6", keyword:"saudação", user_id:3)
Post.create(text: "oi7", keyword:"saudação", user_id:2)
Post.create(text: "oi8", keyword:"saudação", user_id:1)

MostRankedPost.create(user_id:1, posts_id:"12345")
MostRankedPost.create(user_id:1, posts_id:"1234")
