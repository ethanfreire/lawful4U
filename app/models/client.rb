class Client < ApplicationRecord
  has_many :cases
  has_many :appointments, through: :cases
  has_many :lawyers, through: :appointments

end
