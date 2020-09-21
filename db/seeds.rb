# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: "Category 1")
Category.create(name: "Category 2")
Category.create(name: "Category 3")

Comment.create(content: "Content 1")
Comment.create(content: "Content 2")
Comment.create(content: "Content 3")

Post.create(title: "Title 1", content: "Content 1")
Post.create(title: "Title 2", content: "Content 2")
Post.create(title: "Title 3", content: "Content 3")

User.create(username: "Username 1", email: "email1@email.com")
User.create(username: "Username 2", email: "email3@email.com")
User.create(username: "Username 2", email: "email3@email.com")

Post.first.categories << Category.all