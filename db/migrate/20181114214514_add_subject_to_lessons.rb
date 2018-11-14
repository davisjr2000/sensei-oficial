class AddSubjectToLessons < ActiveRecord::Migration[5.2]
  def change
    add_reference :lessons, :subject, foreign_key: true
  end
end
