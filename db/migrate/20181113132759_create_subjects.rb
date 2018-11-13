class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :title
      t.references :parent, index: true
      t.float :price_per_hour

      t.timestamps
    end
  end
end
