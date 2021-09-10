class PreviousExperience < ApplicationRecord
  belongs_to :user
  belongs_to :employer
  has_many :experience_comments
end
