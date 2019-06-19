class Case < ApplicationRecord
  belongs_to :client
  has_many :lawyer_cases
  has_many :lawyers, through: :lawyer_cases
  has_many :appointments
  accepts_nested_attributes_for :client, :allow_destroy => true, :reject_if => :no_name
  validates :title, :case_type, :status, :client, presence: true

  def no_name(attributes)
    byebug
  attributes[:name].blank?
end


  def sign(message, key)
    # cryptographic magic here
    return signature
  end
end
