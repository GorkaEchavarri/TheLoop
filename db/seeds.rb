# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create!(name: "Luke", movie: movies.first)


# clean up the database
puts "Cleaning database"
Comment.destroy_all

# delete all chatrooms
Chatroom.destroy_all
#delete all comments
Post.destroy_all
# delete_all users
Community.destroy_all
# delete communities
User.destroy_all
# delete posts

# create! 8 users
puts "creating users"

file = File.open("./db/images/User1.jpg")
user1 = User.create!(email: "leonardo@dicaprio.com", password: "leo123", first_name: "Leonardo", last_name: "DiCaprio", username: "LeoDiCap", bio: "I'm Leo, a theater enthusiast facing colon cancer. Despite the struggle, my passion for the stage remains unwavering. With resilience and a fighting spirit, I aim to leave a lasting impact, captivating audiences and proving that the power of theater transcends any obstacle.", user_type: "In-treatment", status: "Colon Cancer", date_of_birth: "11/11/74", region: "United States")
user1.photo.attach(io: file, filename: "User1.jpg", content_type: "images/jpg")
user1.save!
puts "creating user 2"
file2 = File.open("./db/images/User2.jpg")
user2 = User.create!(email: "j@lewagon.com", password: "123456", first_name: "James", last_name: "McAvoy", username: "Jamesy360", bio: "I'm James, an avid fan of TheLoop. With an insatiable curiosity and a love for staying connected, TheLoop has become my digital sanctuary. From exploring the latest trends to engaging with a vibrant community, I find joy in every tap, swipe, and notification that this app brings into my life.", user_type: "Circle", status: "Testicular Cancer", date_of_birth: "15/06/97", region: "England")
user2.photo.attach(io: file2, filename: "User2.jpg", content_type: "images/jpg")
user2.save!

file3 = File.open("./db/images/User3.jpeg")
user3 = User.create!(email: "emma@example.com", password: "password123", first_name: "Emma", last_name: "Watson", username: "EmWatson", bio: "Hi I'm Emma, a cat lover and. The gentle purrs and playful antics of my feline companions bring immeasurable joy to my life. And when the day draws to a close, there's nothing quite like witnessing the breathtaking beauty of a sunset, where nature paints the sky with vibrant hues, leaving me in awe of its splendor.", user_type: "In-treatment", status: "Breast Cancer", date_of_birth: "02/04/90", region: "United Kingdom")
user3.photo.attach(io: file3, filename: "User3.jpeg", content_type: "images/jpeg")
user3.save!

file4 = File.open("./db/images/User4.jpg")
user4 = User.create!(email: "jennifer@gmail.com", password: "hello123", first_name: "Jennifer", last_name: "Lawrence", username: "JLaw", bio: "Hi all, I am seeking to understand the journey of living with cancer. With my brother bravely battling this disease, I want to learn more and I hope to shed light on the intricate nuances of living with cancer, fostering compassion and support for those affected.", user_type: "Circle", date_of_birth: "15/08/91", region: "United States")
user4.photo.attach(io: file4, filename: "User4.jpg", content_type: "images/jpg")
user4.save!

file5 = File.open("./db/images/User5.png")
user5 = User.create!(email: "tom@lewagon.com", password: "tomtom123", first_name: "Tom", last_name: "Hanks", username: "THanks", bio: "I'm Tom, a prostate cancer survivor eager to make a difference on TheLoop. Having triumphed over my own battle, I now seek to empower and support others facing similar challenges. By sharing my journey, offering guidance, and fostering a community of resilience, I hope to provide a beacon of hope and strength to those in need within TheLoop community.", user_type: "Recovered", status: "Prostate Cancer", date_of_birth: "09/07/56", region: "United States")
user5.photo.attach(io: file5, filename: "User5.png", content_type: "images/png")
user5.save!

file6 = File.open("./db/images/User6.jpeg")
user6 = User.create!(email: "natalie@example.com", password: "password123", first_name: "Natalie", last_name: "Portman", username: "NPortman", bio: "Hi all! Natalie here. I am here to stay informed and support my sister who was diagnosed with a rare type of cancer. With determination, I looking for knowledge, seeking the latest updates, breakthroughs, and resources.I want to be a pillar of strength for my sister, arming myself with information to provide the best possible support on her challenging journey. Let's talk! :)", user_type: "Circle", date_of_birth: "09/06/81", region: "United States")
user6.photo.attach(io: file6, filename: "User6.jpeg", content_type: "images/jpeg")
user6.save!

file7 = File.open("./db/images/User7.png")
user7 = User.create!(email: "adamondra@lewagon.com", password: "adam123", first_name: "Adam", last_name: "Ondra", username: "AdamO", bio: "I'm Adam, a compassionate soul eager to support my partner during their health struggles. Alongside my dedication to their well-being, I find solace in connecting with others in TheLoop. Sharing experiences, lending a listening ear, and offering encouragement, I love this community, where we can uplift and inspire one another through the power of shared stories and heartfelt connections.", user_type: "Circle", date_of_birth: "11/11/91", region: "United States")
user7.photo.attach(io: file7, filename: "User7.png", content_type: "images/png")
user7.save!

file8 = File.open("./db/images/User8.jpeg")
user8 = User.create!(email: "kate@example.com", password: "kate321", first_name: "Kate", last_name: "Winslet", username: "KWinslet", bio: "Hyaaa! Kate here, I love dancing and watching 80s movies! Undeterred by my health condition, I continue to twirl to the rhythm and immerse myself in the captivating world of 80s cinema. Refusing to let illness intimidate me, I find solace and strength in the joy of dance and the timeless stories that remind me of the resilience within us all.", user_type: "In-treatment", status: "Testicular Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user8.photo.attach(io: file8, filename: "User8.jpeg", content_type: "images/jpeg")
user8.save!

file9 = File.open("./db/images/User9.png")
user9 = User.create!(email: "sunny@lewagon.com", password: "123456", first_name: "Sunny", last_name: "Stuff", username: "Sunny", bio: "I'm Sunny, I find solace in the realms of painting and books. Despite the challenges posed by my health, I immerse myself in vibrant strokes of colors, creating art that reflects my spirit's resilience. In the pages of books, I discover solace, knowledge, and endless worlds to explore. Through the brush and the written word, I defy the limitations imposed by my illness, allowing my creativity and imagination to flourish, bringing light into each moment. Message me to talk about anything :)", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user9.photo.attach(io: file9, filename: "User9.png", content_type: "images/png")
user9.save!

file10 = File.open("./db/images/User10.png")
user10 = User.create!(email: "gorka@lewagon.com", password: "123456", first_name: "Gorka", last_name: "Blah", username: "Gorka", bio: "Nice to meet you all! I am an adventurer and avid climber, determined to conquer both mountains and cancer. I embrace each challenge that comes my way, scaling new heights and pushing my limits. Armed with a zest for life, I refuse to let cancer define me, instead, I strive to live each moment to the fullest, embracing the thrill of adventure and the triumph of resilience. Together with my passion for climbing, I am determined to conquer this battle, inspiring others along the way with the belief that we can overcome any obstacle life presents us.", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user10.photo.attach(io: file10, filename: "User10.png", content_type: "images/png")
user10.save!

file11 = File.open("./db/images/User11.jpeg")
user11 = User.create!(email: "richard@lewagon.com", password: "123456", first_name: "Richard", last_name: "Geere", username: "Richard", bio: "Richard here, my life has been deeply impacted by a close family member's cancer journey. Seeking support and understanding I found TheLoop community. Here, I connect with others who share similar experiences, learning from their wisdom, and finding comfort in their empathy. Hit me up if you want to talk :)", user_type: "Circle", date_of_birth: "05/10/75", region: "United Kingdom")
user11.photo.attach(io: file11, filename: "User11.jpeg", content_type: "images/jpeg")
user11.save!

file12 = File.open("./db/images/User12.jpeg")
user12 = User.create!(email: "johnny@example.com", password: "123456", first_name: "Johnny", last_name: "Meloni", username: "Johnny", bio: "Hi friend :), I want to share my experiences, make new friends, and extend a helping hand to those in need. Through TheLoop, I want to share a supportive space where we can freely discuss the challenges and triumphs of the cancer journey. Together, we can inspire and uplift one another, fostering a community of strength, resilience, and unwavering support.", user_type: "In-treatment", status: "Pancreatic Cancer", date_of_birth: "05/10/75", region: "United Kingdom")
user12.photo.attach(io: file12, filename: "User12.jpeg", content_type: "images/jpeg")
user12.save!

puts "creating communities"
# create! 5 communities
comm1 = Community.create!(title: "Colon Cancer", description: "This is a community for people with colon cancer", user_id: user1.id)
comm1.save!

comm2 = Community.create!(title: "Testicular Cancer", description: "This is a community for people with testicular cancer",user_id: user2.id)
comm2.save!

comm3 = Community.create!(title: "Breast Cancer", description: "This is a community for people with breast cancer", user_id: user3.id)
comm3.save!

comm4 = Community.create!(title: "Exercise", description: "This is a community for young people exercising with cancer", user_id: user4.id)
comm4.save!

comm5 = Community.create!(title: "More Exercise", description: "This is a community for young people exercising even more with cancer", user_id: user5.id)
comm5.save!

#for demo

Community.create!(title: "Gorka Support Group", description: "This is a community for people who love and suport Gorka", user_id: user10.id)

puts "Loop for demo created"

puts "creating posts"

# create! 5 posts
post1 = Post.create!(title: "I have colon cancer", content: "I have colon cancer and I am looking for people to talk to about it", user_id: user1.id, community_id: comm1.id)
post1.save!

post2 = Post.create!(title: "I have testicular cancer", content: "I have testicular cancer and I am looking for people to talk to about it", user_id: user2.id, community_id: comm2.id)
post2.save!

post3 = Post.create!(title: "I have breast cancer", content: "I have breast cancer and I am looking for people to talk to about it", user_id: user3.id, community_id: comm3.id)
post3.save!

post4 = Post.create!(title: "Hello!", content: "I have breast cancer and I am looking for people to talk to about it", user_id: user4.id, community_id: comm4.id)
post4.save!

post5 = Post.create!(title: "hey!", content: "I have colon cancer and I am looking for people to talk to about it to", user_id: user5.id, community_id: comm5.id)
post5.save!

#for demo

post6 = Post.create!(title: "Love Gorka!", content: "I'm Gorka, I've made this group because I sneed love and support. Please love and support me by posting loads of pictures of dogs for my well being!", user_id: user10.id, community_id: comm6.id)
post6.save!

  cheempost = File.open("./db/images/cheems.jpg")
  postch = Post.create!(title: "Dog 4 Gorka", content: "Dog 4 U", user_id: user1.id, community_id: comm6.id)
  postch.photo.attach(io: cheempost, filename: "cheems.jpg", content_type: "images/jpg")
  postch.save!

post7 = Post.create!(title: "I hate Gorka!", content: "This is a Gorka hate-post :c That guy sucks big time!", is_flag: true, user_id: user5.id, community_id: comm6.id)
post7.save!

post8 = Post.create!(title: "Hey!", content: "I'm Gorka neutral but I suppose I could also do with love and support... dog pics too. DM me dog pics!", user_id: user12.id, community_id: comm6.id)
post8.save!

post9 = Post.create!(title: "Who is Gorka?", content: "I'm Gorka-curious, looking forwards to finding out more about Gorka. I hope he's doing well and not at all burnt out by the tremedous amount of work he's doing for TheLoop. What a guy.", user_id: user5.id, community_id: comm6.id)
post9.save!

# creates comments in demo posts
Comment.create!(content: "Can't believe I've been working on all these controllers while Gorka's been fishing for compliments online smh. Good guy though - great presenter", user_id: user11.id, post_id: comm6.id)
Comment.create!(content: "This Gorka guy is alright I guess - great bun", user_id: user12.id, post_id: post6.id)
Comment.create!(content: "Commenting so it's a full house team post. Bingo bango!", user_id: user9.id, post_id: post6.id)
Comment.create!(content: "Wow, so much love you guys, I love TheLoop!", user_id: user10.id, post_id: post6.id)

puts "done"
