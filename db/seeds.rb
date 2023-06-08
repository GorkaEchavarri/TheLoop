# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# clean up the database
puts "Cleaning database"
User.destroy_all
# delete posts
Community.destroy_all
# delete communities
Post.destroy_all
# delete_all users

# create 8 users
puts "creating users"

file = File.open("./db/images/User1.jpg")
user1 = User.create!(email: "leonardo@dicaprio.com", password: "leo123", first_name: "Leonardo", last_name: "DiCaprio", username: "LeoDiCap", bio: "Testing bio description testing testing", user_type: "In-treatment", status: "Colon Cancer", date_of_birth: "11/11/74", region: "United States")
user1.photo.attach(io: file, filename: "User1.jpg", content_type: "images/jpg")
user1.save!
puts "creating user 2"
file2 = File.open("./db/images/User2.jpg")
user2 = User.create(email: "j@lewagon.com", password: "123456", first_name: "James", last_name: "McAvoy", username: "Jamesy360", bio: "Testing bio description testing testing", user_type: "Circle", status: "Testicular Cancer", date_of_birth: "15/06/97", region: "England")
user2.photo.attach(io: file2, filename: "User2.jpg", content_type: "images/jpg")
user2.save!

file3 = File.open("./db/images/User3.jpeg")
user3 = User.create(email: "emma@example.com", password: "password123", first_name: "Emma", last_name: "Watson", username: "EmWatson", bio: "Testing bio description testing testing", user_type: "In-treatment", status: "Breast Cancer", date_of_birth: "02/04/90", region: "United Kingdom")
user3.photo.attach(io: file3, filename: "User3.jpeg", content_type: "images/jpeg")
user3.save!

file4 = File.open("./db/images/User4.jpg")
user4 = User.create(email: "jennifer@gmail.com", password: "hello123", first_name: "Jennifer", last_name: "Lawrence", username: "JLaw", bio: "Testing bio description testing testing", user_type: "Circle", date_of_birth: "15/08/91", region: "United States")
user4.photo.attach(io: file4, filename: "User4.jpg", content_type: "images/jpg")
user4.save!

file5 = File.open("./db/images/User5.png")
user5 = User.create(email: "tom@lewagon.com", password: "tomtom123", first_name: "Tom", last_name: "Hanks", username: "THanks", bio: "Testing bio description testing testing", user_type: "Recovered", status: "Prostate Cancer", date_of_birth: "09/07/56", region: "United States")
user5.photo.attach(io: file5, filename: "User5.png", content_type: "images/png")
user5.save!

file6 = File.open("./db/images/User6.jpeg")
user6 = User.create(email: "natalie@example.com", password: "password123", first_name: "Natalie", last_name: "Portman", username: "NPortman", bio: "Testing bio description testing testing", user_type: "Circle", date_of_birth: "09/06/81", region: "United States")
user6.photo.attach(io: file6, filename: "User6.jpeg", content_type: "images/jpeg")
user6.save!

file7 = File.open("./db/images/User7.png")
user7 = User.create(email: "adamondra@lewagon.com", password: "adam123", first_name: "Adam", last_name: "Ondra", username: "AdamO", bio: "Testing bio descrmything sting someing", user_type: "Circle", date_of_birth: "11/11/91", region: "United States")
user7.photo.attach(io: file7, filename: "User7.png", content_type: "images/png")
user7.save!

file8 = File.open("./db/images/User8.jpeg")
user8 = User.create(email: "kate@example.com", password: "kate321", first_name: "Kate", last_name: "Winslet", username: "KWinslet", bio: "Testing bio description testing testing", user_type: "In-treatment", status: "Testicular Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user8.photo.attach(io: file8, filename: "User8.jpeg", content_type: "images/jpeg")
user8.save!

file9 = File.open("./db/images/User9.png")
user9 = User.create(email: "sunny@lewagon.com", password: "123456", first_name: "Sunny", last_name: "Stuff", username: "Sunny", bio: "Testing basdf you knowtesting", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user9.photo.attach(io: file9, filename: "User9.png", content_type: "images/png")
user9.save!

file10 = File.open("./db/images/User10.png")
user10 = User.create(email: "gorka@lewagon.com", password: "123456", first_name: "Gorka", last_name: "Blah", username: "Gorka", bio: "Testlorem ipsum sng testing", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user10.photo.attach(io: file10, filename: "User10.png", content_type: "images/png")
user10.save!

file11 = File.open("./db/images/User11.jpeg")
user11 = User.create(email: "richard@lewagon.com", password: "123456", first_name: "Richard", last_name: "Geere", username: "Richard", bio: "Testi bio ofe string of sting", user_type: "Circle", date_of_birth: "05/10/75", region: "United Kingdom")
user11.photo.attach(io: file11, filename: "User11.jpeg", content_type: "images/jpeg")
user11.save!

file12 = File.open("./db/images/User12.jpeg")
user12 = User.create(email: "johnny@example.com", password: "123456", first_name: "Johnny", last_name: "Meloni", username: "Johnny", bio: "Testisomething som testing testing", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user12.photo.attach(io: file12, filename: "User12.jpeg", content_type: "images/jpeg")
user12.save!

puts "creating communities"
# create 5 communities
Community.create(title: "Colon Cancer", description: "This is a community for people with colon cancer", user_id: 1)
Community.create(title: "Testicular Cancer", description: "This is a community for people with testicular cancer",user_id: 2)
Community.create(title: "Breast Cancer", description: "This is a community for people with breast cancer", user_id: 3)
Community.create(title: "Exercise", description: "This is a community for young people exercising with cancer", user_id:4)
Community.create(title: "More Exercise", description: "This is a community for young people exercising more with cancer", user_id:5)

puts "creating posts"

# create 5 posts
Post.create(title: "I have colon cancer", content: "I have colon cancer and I am looking for people to talk to about it", user_id: 1, community_id: 1)
Post.create(title: "I have testicular cancer", content: "I have testicular cancer and I am looking for people to talk to about it", user_id: 2, community_id: 2)
Post.create(title: "I have breast cancer", content: "I have breast cancer and I am looking for people to talk to about it", user_id:3, community_id: 3)
Post.create(title: "Hello!", content: "I have breast cancer and I am looking for people to talk to about it", user_id: 4, community_id: 4)
Post.create(title: "hey!", content: "I have colon cancer and I am looking for people to talk to about it to", user_id: 5, community_id: 5)
# posts
puts "done"
