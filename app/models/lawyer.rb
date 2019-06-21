class Lawyer < ApplicationRecord
  belongs_to :user
  has_many :cases
  has_many :appointments, through: :cases
  has_many :clients, through: :cases

  validates :name, :address, :attorney_fee, presence: true

  validates :phone, length: { is: 10 }
end
