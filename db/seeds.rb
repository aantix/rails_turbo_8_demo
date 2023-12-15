# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



user = User.create(name: 'Jim Jones', email: 'jim.jones1@gmail.com')

blog1 = Blog.create(name: 'Dinner and a Movie', user: user)
post1 = Post.create(title: 'Titanic', description: 'A Love Story', blog: blog1)
post2 = Post.create(title: 'Airplane! The Movie', description: 'The Greatest Comedy Ever', blog: blog1)

blog2 = Blog.create(name: 'Nacho Typical Blog', user: user)
post3 = Post.create(title: 'Best Stadium Nachos.', description: 'Best MLB Stadium Nachos', blog: blog2)
post4 = Post.create(title: 'Best local nachos', description: 'Best nachos in Lincoln, NE', blog: blog2)
