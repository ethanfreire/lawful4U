class Lawyer < ApplicationRecord
    has_many :lawyer_cases
    has_many :cases, through: :lawyer_cases
    has_many :appointments
    belongs_to :user

    validates :name, :email, :address, :attorney_fee, presence: true
    validates :email, confirmation: true
    validates :phone, length: { is: 10 }

    # def self.search(search)
    #     if search
    #         lawyer = Lawyer.find_by(name: search)
    #         if lawyer
    #             where(name: lawyer)
    #         else
    #             self.all
    #         end
    #     else
    #         self.all
    #     end
    # end
end
