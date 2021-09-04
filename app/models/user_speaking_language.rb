class UserSpeakingLanguage < ApplicationRecord
  belongs_to :user
  belongs_to :speaking_language
end
