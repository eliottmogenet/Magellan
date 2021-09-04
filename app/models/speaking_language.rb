class SpeakingLanguage < ApplicationRecord

  NAME = ['French 🇫🇷', 'English 🇬🇧', 'Spanish 🇪🇸']

  has_many :user_speaking_languages


end
