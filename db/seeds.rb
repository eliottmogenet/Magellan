# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

Req.destroy_all
User.destroy_all
Matching.destroy_all
Customer.destroy_all

p "creating customers"

customer1 = Customer.new(name: "Nubank" )
customer1.save

p "creating users"


user1 = customer1.users.create(email: "techrecruiter1@gmail.com", password: "techrecruiter1@gmail.com", tech_recruiter: true)
user1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
user1.save

p "creating reqs"

req1 = customer1.reqs.create(title: "Data Engineer ", salary_range: 50)
req1.save
req2 = customer1.reqs.create(title: "Ruby Engineer ", salary_range: 60)
req2.save
req3 = customer1.reqs.create(title: "Node.js Engineer ", salary_range: 60)
req3.save

p "creating candidates"

candidate1 = User.new(first_name: "Anna", last_name: "Sanchez", email: "alison@datatog.com", password: "seb@lewagon.org", city: "Buenos-Aires(🇦🇷)", job: "Data scientist", level: 4, timezone: "BST GMT-3", current_employer: "Facebook" , status: "In Magellan")
candidate1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate1.save!

candidate2 = User.new(first_name: "Roberto", last_name: "De Vez", email: "alison1@datatog.com", password: "seb1@lewagon.org", city: "Rio de Janeiro(🇧🇷)", job: "Software Engineer", level: 4, timezone: "BST GMT-3", current_employer: "Facebook" , status: "In Magellan")
candidate2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate4.jpg')), filename: 'candidate4.jpg')
candidate2.save!

candidate3 = User.new(first_name: "Kevin", last_name: "Michel", email: "alison11@datatog.com", password: "seb11@lewagon.org", city: "Rio de Janeiro(🇧🇷)", job: "Software Engineer", level: 4, timezone: "BST GMT-3", current_employer: "Facebook" , status: "In Magellan")
candidate3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate4.jpg')), filename: 'candidate4.jpg')
candidate3.save!

p "creating matchings"


matching1 = req1.matchings.create(user_id: candidate1.id)
matching1.save!

matching2 = req1.matchings.create(user_id: candidate3.id)
matching2.save!

matching3 = req2.matchings.create(user_id: candidate3.id)
matching3.save!

p "finished!"
