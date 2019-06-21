class Case < ApplicationRecord
  belongs_to :client
  belongs_to :lawyer
  has_many :appointments
  accepts_nested_attributes_for :client, :allow_destroy => true, :reject_if => :no_name
  validates :title, :case_type, :status, :client, presence: true

  def no_name(attributes)

  attributes[:name].blank?
end


  def sign(message, key)
    # cryptographic magic here
    return signature
  end
end
