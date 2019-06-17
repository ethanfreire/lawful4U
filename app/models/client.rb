class Client < ApplicationRecord
  has_many :cases
  delegate :appointment, to: :case
  has_many :lawyers, through: :lawyer_cases


end
