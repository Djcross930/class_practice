class Student < ApplicationRecord
  has_many :experiences
  has_many :educations
  has_many :skills
  has_one :capstone
  belongs_to :user
end
