class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.float :price_in_time
      t.string :title
      t.references :sensei, foreign_key: true

      t.timestamps
    end
  end
end
