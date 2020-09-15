# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@cool = Category.create(name: 'Cool')
@post = Post.create(title: 'test', content: 'test post')
User.create(username: 'me')
User.create(username: 'you')