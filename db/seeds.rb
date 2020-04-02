# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lucy = User.create(username: "Lucy", password: "password")
jane = User.create(username: "Jane", password: "password")

blog1 = lucy.posts.create(title: "My first blog", content: "blogging is cool")
blog2 = lucy.posts.create(title: "My second blog", content: "blogging is cool")
blog3 = lucy.posts.create(title: "My third blog", content: "blogging is cool")

post1 = jane.posts.create(title: "My first post", content: "blogging is cool")
post2 = jane.posts.create(title: "My second post", content: "blogging is cool")
