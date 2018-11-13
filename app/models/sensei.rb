class Sensei < ApplicationRecord
  belongs_to :user
  has_many :lessons
  has_many :sensei_subjects
  has_many :availabilities
end
