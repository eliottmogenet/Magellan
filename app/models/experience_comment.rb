class ExperienceComment < ApplicationRecord

  belongs_to :matching
  belongs_to :previous_experience
end
