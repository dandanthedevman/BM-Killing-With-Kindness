User.destroy_all


User.create!(user_name: "dan", email: "dan@dan.com", password: "123")


20.times do 

	User.create!(user_name: Faker::Simpsons.character, email: Faker::Internet.safe_email, password: "123")

end 

