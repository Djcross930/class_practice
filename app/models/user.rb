class User < ApplicationRecord
  has_secure_password
  has_one :student
validates :email, presence: true, uniqueness: true
end
