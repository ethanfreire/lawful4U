class User < ApplicationRecord
    has_secure_password

    has_many :clients
    has_many :lawyers

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true
end
