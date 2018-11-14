class FixLessonColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :lessons, :students_id, :student_id
  end
end
