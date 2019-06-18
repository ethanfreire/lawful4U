class Client < ApplicationRecord
  has_many :cases
  delegate :appointment, to: :case
  has_many :lawyers, through: :lawyer_cases

  validates :name, :email, :phone, :address, presence: true
  validates :email, confirmation: true
  validates :phone, length: { is: 10 }
end
