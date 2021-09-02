class CreateProductreviews < ActiveRecord::Migration[6.1]
  def change
    create_table :productreviews do |t|
      t.string :comment
      t.integer :rating
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
