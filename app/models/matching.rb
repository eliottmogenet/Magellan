class Matching < ApplicationRecord

  STATUS = ['waiting', 'available', 'contacted', 'archived', 'time_out']

  belongs_to :user
  belongs_to :req
  has_many :experience_comments

end
