# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'csv'


ExperienceComment.destroy_all
PreviousExperience.destroy_all
Matching.destroy_all
UserStack.destroy_all
UserSpeakingLanguage.destroy_all
UserCodingPractice.destroy_all
Req.destroy_all
User.destroy_all
Country.destroy_all
Customer.destroy_all
Stack.destroy_all
Employer.destroy_all
SpeakingLanguage.destroy_all
CodingPractice.destroy_all


csv_text = File.read(Rails.root.join('lib', 'seeds', 'file_name.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  c = Country.new
  c.name = row['country_name']
  c.notice_period = row['notice_period']
  c.healthcare = row['healthcare']
  c.other_benefits = row['other_benefits']
  c.save

  e = Employer.new
  e.id = row['employer_id']
  e.name = row['employer_name']
  e.description = row['description']
  e.funding_stage = row['funding_stage']
  #e.backend_stack = row['employer_backend_stack']
  #e.frontend_stack = row['employer_frontend_stack']
  #e.tools = row['tools_text']
  #e.last_funding_amount = row['last_funding_amount']
  #e.team_size = row['team_size']
  #e.eng_team_size = row['eng_team_size']
  e.architecture = row['architecture']
  e.dev_ops = row['dev_ops']
  e.industry = row['industry']
  e.save

  pr = PreviousExperience.new
  pr.employer_id = row['experience_employer_id']
  pr.description = row['experience_description']
  pr.user_id = row['experience_user_id']
  #pr.current_employer = row['current_employer?']
  pr.save


  u = User.new
  u.first_name = row['first_name']
  u.last_name = row['last_name']
  u.linkedin_profile = row['linkedin_profile']
  u.email = row['email']
  u.password = row['password']
  u.job = row['job']
  u.country_id = row['country_id']
  u.city = row['city']
  u.status = row['total_years_xp']
  u.next_jobs = row['next_jobs']
  u.expected_wage = row['expected_wage']
  u.area_median_wage = row['area_median_wage']
  u.full_remote_only = row['full_remote_only']
  u.university = row['university']
  u.timezone = row['timezone']
  #u.employed_more_than_one_year = row['employed_more_than_one_year']
  u.customer_id = row['user_customer_id']
  u.tech_recruiter = row['tech_recruiter']
  u.save


  cu = Customer.new
  cu.id = row['customer_id']
  cu.name = row['customer_name']
  cu.save

  req = Req.new
  req.title = row['req_title']
  req.customer_id = row['req_customer_id']
  req.save
end
