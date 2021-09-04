class CreateProductItems < ActiveRecord::Migration[6.1]
  def change
    create_table :product_items do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :size
      t.string :color
      t.boolean :available
      t.integer :quantity
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
