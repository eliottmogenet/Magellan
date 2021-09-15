# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

ExperienceComment.destroy_all
PreviousExperience.destroy_all
Matching.destroy_all
UserStack.destroy_all
UserSpeakingLanguage.destroy_all
UserCodingPractice.destroy_all
Country.destroy_all
Req.destroy_all
User.destroy_all
Customer.destroy_all
Stack.destroy_all
Employer.destroy_all
SpeakingLanguage.destroy_all
CodingPractice.destroy_all


p "creating customers"

customer1 = Customer.new(name: "Nubank" )
customer1.save

p "creating users"


user1 = customer1.users.create(first_name: "Valentin", last_name: "Loye", email: "techrecruiter1@gmail.com", password: "techrecruiter1@gmail.com", tech_recruiter: true)
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

candidate1 = User.new(first_name: "Anna", last_name: "Sanchez", email: "alison@datatog.com", password: "seb@lewagon.org", active: true, area_median_wage: "$USD 36.000", next_jobs: "Data scientist, Lead data engineer", city: "Buenos-Aires(🇦🇷)", job: "Data scientist", timezone: "BST GMT-3", expected_wage: 67, current_employer: "Facebook" , status: "active", university: "Engineering at University of Chile (1st university Chile)", relocation_possible: true, full_remote_only: true, contractor_possible: true)
candidate1.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate1.jpg')), filename: 'candidate1.jpg')
candidate1.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map.png')), filename: 'map.png')
candidate1.save!

candidate2 = User.new(first_name: "Roberto", last_name: "De Vez", email: "alison1@datatog.com", password: "seb1@lewagon.org", active: false, area_median_wage: "$USD 36.000", next_jobs: "Data scientist, Lead data engineer", city: "Rio de Janeiro(🇧🇷)", job: "Software Engineer", timezone: "BST GMT-3", expected_wage: 57, current_employer: "Facebook" , status: "passive", university: "Engineering at University of Chile (1st university Chile)", relocation_possible: true, full_remote_only: true, contractor_possible: true)
candidate2.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate4.jpg')), filename: 'candidate4.jpg')
candidate2.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map.png')), filename: 'map.png')
candidate2.save!

candidate3 = User.new(first_name: "Kevin", last_name: "Michel", email: "alison11@datatog.com", password: "seb11@lewagon.org", active: false, area_median_wage: "$USD 36.000", next_jobs: "Data scientist, Lead data engineer", city: "Rio de Janeiro(🇧🇷)", job: "Software Engineer", timezone: "BST GMT-3", expected_wage: 47, current_employer: "Facebook" , status: "active", university: "Engineering at University of Chile (1st university Chile)", relocation_possible: true, full_remote_only: true, contractor_possible: true)
candidate3.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/candidate4.jpg')), filename: 'candidate4.jpg')
candidate3.map.attach(io: File.open(File.join(Rails.root,'app/assets/images/map.png')), filename: 'map.png')
candidate3.save!

p "creating matchings"


matching1 = req1.matchings.create(user_id: candidate1.id, level: 4, matching_description: "Anna might be a good fit for your job req because he is able and willing to learn Python (after 4 years Ruby experience) and has already experience in SQL (database) . Only 3h timezone
difference with your HQ in NYC.", timezone_overlap: 5, status: "available")
matching1.save!

matching2 = req1.matchings.create(user_id: candidate3.id, level: 3, matching_description: "Roberto might be a good fit for your job req because he is able and willing to learn Python (after 4 years Ruby experience) and has already experience in SQL (database) . Only 3h timezone
difference with your HQ in NYC.",  timezone_overlap: 5, status: "available")
matching2.save!

matching3 = req2.matchings.create(user_id: candidate3.id, level: 3, matching_description: "Kevin might be a good fit for your job req because he is able and willing to learn Python (after 4 years Ruby experience) and has already experience in SQL (database) . Only 3h timezone
difference with your HQ in NYC.",  timezone_overlap: 5, status: "available")
matching3.save!

p "creating employers"

rappi = Employer.new(name: "Rappi", funding_stage: "Series B", industry: "Fintech", description: "Cornershop is an on-demand grocery delivery service for the Latin American market. Founded simultaneously in Santiago, Chile, and Mexico City in 2015, now operate in 8 countries across the Americas. In July 2020, Uber acquired a majority stake in the company fo $3B+.")
rappi.logo.attach(io: File.open(File.join(Rails.root,'app/assets/images/rappi.png')), filename: 'Rappi.png')
rappi.save!
fintual = Employer.new(name: "Fintual", funding_stage: "Series B", industry: "Fintech", description: "Cornershop is an on-demand grocery delivery service for the Latin American market. Founded simultaneously in Santiago, Chile, and Mexico City in 2015, now operate in 8 countries across the Americas. In July 2020, Uber acquired a majority stake in the company fo $3B+.")
fintual.logo.attach(io: File.open(File.join(Rails.root,'app/assets/images/fintual.png')), filename: 'Fintual.png')
fintual.save!


p "creating stacks"

python = Stack.new(name: "Python")
python.save!
ruby_rails = Stack.new(name: "Ruby on rails")
ruby_rails.save!
node = Stack.new(name: "Node.js")
node.save!
react = Stack.new(name: "React.js")
react.save!
java = Stack.new(name: "Java")
java.save!
laravel = Stack.new(name: "Laravel")
laravel.save!

p "creating speaking language"


english = SpeakingLanguage.new(name: "English")
english.save!
spanish = SpeakingLanguage.new(name: "Spanish")
spanish.save!
french = SpeakingLanguage.new(name: "French")
french.save!
portuguese = SpeakingLanguage.new(name: "Portuguese")
portuguese.save!

p "creating coding pratrices"

scrum = CodingPractice.new(name: "Scrum")
scrum.save!
tdd = CodingPractice.new(name: "TDD")
tdd.save!
code_review = CodingPractice.new(name: "Code review")
code_review.save!

p "creating countries"

chile = Country.new(name: "Chile 🇨🇱", notice_period: "2 weeks", healthcare: "Chilean healthcare", other_benefits: "PTO, 3rd month" )
chile.save!

#per users

p "creating user stacks - skillsets of candidates"

#candidate1
user_stack1 = candidate1.user_stacks.create(stack_id: ruby_rails.id, years_xp: 4, able_to_learn: false)
user_stack1.save
user_stack2 = candidate1.user_stacks.create(stack_id: python.id, able_to_learn: true)
user_stack2.save
user_stack3 = candidate1.user_stacks.create(stack_id: node.id, years_xp: 4, able_to_learn: false)
user_stack3.save
user_stack4 = candidate1.user_stacks.create(stack_id: react.id, able_to_learn: true)
user_stack4.save

#candidate2

user_stack6 = candidate2.user_stacks.create(stack_id: ruby_rails.id, years_xp: 4, able_to_learn: false)
user_stack6.save
user_stack7 = candidate2.user_stacks.create(stack_id: python.id, able_to_learn: true)
user_stack7.save
user_stack8 = candidate2.user_stacks.create(stack_id: node.id, years_xp: 4, able_to_learn: false)
user_stack8.save
user_stack9 = candidate2.user_stacks.create(stack_id: react.id, able_to_learn: true)
user_stack9.save

#candidate3

user_stack10 = candidate3.user_stacks.create(stack_id: ruby_rails.id, years_xp: 4, able_to_learn: false)
user_stack10.save
user_stack11 = candidate3.user_stacks.create(stack_id: python.id, able_to_learn: true)
user_stack11.save
user_stack12 = candidate3.user_stacks.create(stack_id: node.id, years_xp: 4, able_to_learn: false)
user_stack12.save
user_stack13 = candidate3.user_stacks.create(stack_id: react.id, able_to_learn: true)
user_stack13.save


p "creating user speaking languages"


#candidate1
user_speaking_languages1 = candidate1.user_speaking_languages.create(speaking_language_id: english.id, level: "Intermediate")
user_speaking_languages1.save
user_speaking_languages2 = candidate1.user_speaking_languages.create(speaking_language_id: spanish.id, level: "Fluent", country: "Chile 🇨🇱")
user_speaking_languages2.save

#candidate2

user_speaking_languages3 = candidate2.user_speaking_languages.create(speaking_language_id: english.id, level: "Intermediate")
user_speaking_languages3.save
user_speaking_languages4 = candidate2.user_speaking_languages.create(speaking_language_id: spanish.id, level: "Fluent", country: "Chile 🇨🇱")
user_speaking_languages4.save

#candidate3

user_speaking_languages5 = candidate3.user_speaking_languages.create(speaking_language_id: english.id, level: "Intermediate")
user_speaking_languages5.save
user_speaking_languages6 = candidate3.user_speaking_languages.create(speaking_language_id: spanish.id, level: "Fluent", country: "Chile 🇨🇱")
user_speaking_languages6.save


p "creating user coding pratrices"

#candidate1
user_coding_practices1 = candidate1.user_coding_practices.create(coding_practice_id: scrum.id)
user_coding_practices1.save
user_coding_practices2 = candidate1.user_coding_practices.create(coding_practice_id: tdd.id)
user_coding_practices2.save

#candidate2
user_coding_practices3 = candidate2.user_coding_practices.create(coding_practice_id: scrum.id)
user_coding_practices3.save
user_coding_practices4 = candidate2.user_coding_practices.create(coding_practice_id: tdd.id)
user_coding_practices4.save


#candidate3
user_coding_practices5 = candidate3.user_coding_practices.create(coding_practice_id: scrum.id)
user_coding_practices5.save
user_coding_practices6 = candidate3.user_coding_practices.create(coding_practice_id: tdd.id)
user_coding_practices6.save


p "creating previous experiences per candidates"

#candidate1
experience1 = candidate1.previous_experiences.create(number: 1, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: rappi.id, description: "At Rappi, he developped a real-time notification system using  websockets for 10K users, in a team of 20 engineers.
It was a 2 months project in Scrum using Circle CI.")
experience1.save
experience2 = candidate1.previous_experiences.create(number: 2, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: fintual.id, description: "At Fintual, he built a database using PostgreSQL for 100K users, in a team of 5 engineers. It was a 1 year project.")
experience2.save

#candidate2
experience3 = candidate2.previous_experiences.create(number: 1, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: rappi.id, description: "At Rappi, he developped a real-time notification system using  websockets for 10K users, in a team of 20 engineers.
It was a 2 months project in Scrum using Circle CI.")
experience3.save
experience4 = candidate2.previous_experiences.create(number: 2, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: fintual.id, description: "At Fintual, he built a database using PostgreSQL for 100K users, in a team of 5 engineers. It was a 1 year project.")
experience4.save

#candidate3
experience5 = candidate3.previous_experiences.create(number: 1, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: rappi.id, description: "At Rappi, he developped a real-time notification system using  websockets for 10K users, in a team of 20 engineers.
It was a 2 months project in Scrum using Circle CI.")
experience5.save
experience6 = candidate3.previous_experiences.create(number: 2, started_at: "May 2018", end_at: "Now", team_size: "35 to 50 (+45%)", fundraising: "$35M - May 2019", employer_id: fintual.id, description: "At Fintual, he built a database using PostgreSQL for 100K users, in a team of 5 engineers. It was a 1 year project.")
experience6.save


p "creating experience comment per previous experiences "

comment1 = matching1.experience_comments.create(previous_experience_id: experience1.id, comment: "High level experience")
comment1.save
comment2 = matching1.experience_comments.create(previous_experience_id: experience1.id, comment: "Same industry")
comment2.save


comment3 = matching2.experience_comments.create(previous_experience_id: experience3.id, comment: "Managing role")
comment3.save
comment4 = matching2.experience_comments.create(previous_experience_id: experience3.id, comment: "Close to your req")
comment4.save

comment5 = matching3.experience_comments.create(previous_experience_id: experience5.id, comment: "High level experience")
comment5.save
comment6 = matching3.experience_comments.create(previous_experience_id: experience5.id, comment: "Same industry")
comment6.save




p "finished!"
