# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Req.destroy_all#
User.destroy_all

req1 = Req.new(title: "Data Engineer ", salary_range: 50)
req1.save
req2 = Req.new(title: "Ruby Engineer ", salary_range: 60)
req2.save

candidate1 = User.new(first_name: "Anna", last_name: "Sanchez", email: "alison@datatog.com", password: "seb@lewagon.org", city: "Buenos-Aires(🇦🇷)", job: "Data scientist", level: 4, timezone: "BST GMT-3", current_employer: "Facebook" , status: "In Magellan")
candidate1.save!



p "finished!"
