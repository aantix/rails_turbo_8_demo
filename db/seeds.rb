# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



user = User.create(name: 'Jim Jones', email: 'jim.jones1@gmail.com')

blog1 = Blog.create(name: 'Blog #1', user: user)
post1 = Post.create(title: 'Post #1', description: 'My post description', blog: blog1)
post2 = Post.create(title: 'Post #2', description: 'My post description', blog: blog1)

blog2 = Blog.create(name: 'Blog #2', user: user)
post3 = Post.create(title: 'Post #3', description: 'My post description', blog: blog2)
post4 = Post.create(title: 'Post #4', description: 'My post description', blog: blog2)
