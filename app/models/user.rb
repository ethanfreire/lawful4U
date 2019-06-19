class User < ApplicationRecord
    has_secure_password
    has_one :client
    has_one :lawyer
    validates :email, presence: true, uniqueness: true
end
