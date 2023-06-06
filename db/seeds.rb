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
user_one = User.create(email: "leonardo@dicaprio.com", password: "leo123", first_name: "Leonardo", last_name: "DiCaprio", username: "LeoDiCap", bio: "Testing bio description testing testing", user_type: "Patient", status: "Colon Cancer", date_of_birth: "11/11/74", region: "United States")
user_two = User.create(email: "j@lewagon.com", password: "123456", first_name: "James", last_name: "McAvoy", username: "Jamesy360", bio: "Testing bio description testing testing", user_type: "Patient", status: "Testicular Cancer", date_of_birth: "15/06/97", region: "England")
user_three = User.create(email: "emma@example.com", password: "password123", first_name: "Emma", last_name: "Watson", username: "EmWatson", bio: "Testing bio description testing testing", user_type: "Patient", status: "Breast Cancer", date_of_birth: "02/04/90", region: "United Kingdom")
user_four = User.create(email: "jennifer@gmail.com", password: "hello123", first_name: "Jennifer", last_name: "Lawrence", username: "JLaw", bio: "Testing bio description testing testing", user_type: "Patient", status: "Lung Cancer", date_of_birth: "15/08/91", region: "United States")
user_five = User.create(email: "tom@lewagon.com", password: "tomtom123", first_name: "Tom", last_name: "Hanks", username: "THanks", bio: "Testing bio description testing testing", user_type: "Patient", status: "Prostate Cancer", date_of_birth: "09/07/56", region: "United States")
user_six = User.create(email: "natalie@example.com", password: "password123", first_name: "Natalie", last_name: "Portman", username: "NPortman", bio: "Testing bio description testing testing", user_type: "Patient", status: "Ovarian Cancer", date_of_birth: "09/06/81", region: "United States")
user_seven = User.create(email: "leonardo@dicaprio.com", password: "leo123", first_name: "Leonardo", last_name: "DiCaprio", username: "LeoDiCap", bio: "Testing bio description testing testing", user_type: "Patient", status: "Colon Cancer", date_of_birth: "11/11/74", region: "United States")
user_eight = User.create(email: "kate@example.com", password: "kate321", first_name: "Kate", last_name: "Winslet", username: "KWinslet", bio: "Testing bio description testing testing", user_type: "Patient", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")

puts "creating communities"
# create 5 communities
community_one = Community.create(title: "Colon Cancer", description: "This is a community for people with colon cancer", user_id: 1)
community_two = Community.create(title: "Testicular Cancer", description: "This is a community for people with testicular cancer",user_id: 2)
community_three = Community.create(title: "Breast Cancer", description: "This is a community for people with breast cancer", user_id: 3)
community_four = Community.create(title: "Exercise", description: "This is a community for young people exercising with cancer", user_id:4)

puts "creating posts"

# create 5 posts
post_one = Post.create(title: "I have colon cancer", content: "I have colon cancer and I am looking for people to talk to about it", user_id: 1, community_id: 1)
post_two = Post.create(title: "I have testicular cancer", content: "I have testicular cancer and I am looking for people to talk to about it", user_id: 2, community_id: 2)
post_three = Post.create(title: "I have breast cancer", content: "I have breast cancer and I am looking for people to talk to about it", user_id:3, community_id: 3)
Post_four = Post.create(title: "Hello!", content: "I have breast cancer and I am looking for people to talk to about it", user_id: 4, community_id: 4)
post_five = Post.create(title: "hey!", content: "I have colon cancer and I am looking for people to talk to about it to", user_id: 5, community_id: 5)
# posts
puts "done"
