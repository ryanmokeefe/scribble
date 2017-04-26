# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

post1 = Post.create({
  title: "New Summer Movies",
  author: "Andy",
  body: "There are a lot of good movies coming out soon",
  img_url: "http://a.dilcdn.com/bl/wp-content/uploads/sites/6/2017/01/sw-the-last-jedi-tall-B.jpg"
})

post2 = Post.create({
  title: "New Summer Books",
  author: "Andy",
  body: "There are a lot of good books coming out soon",
  img_url: "http://threads.moss-pultz.com/files/2010/07/outliers.jpg"
})

post3 = Post.create({
  title: "New Summer Music",
  author: "Andy",
  body: "There is a lot of good music coming out soon",
  img_url: "http://ultimateclassicrock.com/files/2012/10/lynyrd-skynyrd-top-10.jpg"
})

Comment.create([
    {
      body: "I can't wait to see the new Star Wars movie",
      author: "Andy",
      post: post1
    },
    {
      body: "I really like Malcom Gladwell's work",
      author: "Andy",
      post: post2
    },
    {
      body: "Lynyrd Skynyrd is pretty cool",
      author: "Andy",
      post: post3
    }
])
