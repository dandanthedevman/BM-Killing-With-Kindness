
# destroy all the things
User.destroy_all
Message.destroy_all

# crates admim user 
User.create!(user_name: "dan", email: "dan@dan.com", password: "123")

# creates random users 
40.times do 

	User.create!(user_name: Faker::Internet.user_name, email: Faker::Internet.safe_email, password: "123")

end 

#creates messages for users 
User.all.each do |user|

	user.messages.create!(content: Faker::Lorem.sentence)

end 