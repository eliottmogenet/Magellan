class Req < ApplicationRecord

  has_many :matchings
  #belongs_to :customer

  has_many :users, through: :matchings
end
