class Lesson < ApplicationRecord
  belongs_to :sensei
  belongs_to :student
end
