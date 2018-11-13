class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.boolean :reserved
      t.string :video
      t.references :sensei, foreign_key: true
      t.references :students, foreign_key: true

      t.timestamps
    end
  end
end
