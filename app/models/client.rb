class Client < ApplicationRecord
  belongs_to :user
  has_many :cases
  has_many :appointments, through: :cases
  has_many :lawyers, through: :cases
  validates :name, :phone, :address, presence: true

  validates :phone, length: { is: 10 }
end
