class Student < ApplicationRecord
  belongs_to :user
  has_many :lessons

  validates :user_id, uniqueness: true, presence: true
end
