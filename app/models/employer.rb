class Employer < ApplicationRecord
  has_many :previous_experiences
  has_one_attached :logo
end
