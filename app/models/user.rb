class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  #belongs_to :country
  belongs_to :customer, optional: true

  #has_many :user_stacks
  #has_many :stacks, through: :user_stacks

  #has_many :previous_experiences
  #has_many :employers, through: :previous_experiences

  #has_many :user_speaking_languages
  #has_many :speaking_languages, through: :user_speaking_languages

  #has_many :user_coding_practices
  #has_many :coding_practices, through: :user_coding_practices

  has_many :matchings
  has_many :reqs, through: :matchings
end
