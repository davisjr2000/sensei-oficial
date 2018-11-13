class Student < ApplicationRecord
  belongs_to :user
  has_many :lessons
end
