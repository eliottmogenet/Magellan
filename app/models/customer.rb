class Customer < ApplicationRecord

  has_many :reqs
  has_many :users
  #has_many :reqs, through :customer
end
