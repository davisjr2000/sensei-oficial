class Lesson < ApplicationRecord
  belongs_to :sensei
  belongs_to :students
end
