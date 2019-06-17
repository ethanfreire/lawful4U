class Case < ApplicationRecord
belongs_to :client
has_many :lawyer_cases
has_many :lawyers, through: :lawyer_cases
has_many :appointments
end
