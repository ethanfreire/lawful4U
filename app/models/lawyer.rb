class Lawyer < ApplicationRecord
  belongs_to :user
  has_many :lawyer_cases
  has_many :cases, through: :lawyer_cases
  has_many :appointments

  validates :name, :email, :address, :attorney_fee, presence: true
  validates :email, confirmation: true
  validates :phone, length: { is: 10 }
end
