class CreatePaintings < ActiveRecord::Migration
  def change
    create_table :paintings do |t|
      t.string :title
      t.decimal :price
      t.integer :quantity
      t.text :description
      t.string :size
      t.string :materials
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
