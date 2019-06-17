class Lawyer < ApplicationRecord
  has_many :lawyer_cases
  has_many :cases, through:  :lawyer_cases
  has_many :appointments
end
