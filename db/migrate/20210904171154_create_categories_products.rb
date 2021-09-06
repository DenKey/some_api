# frozen_string_literal: true

class CreateCategoriesProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_products, id: false do |t|
      t.belongs_to :product
      t.belongs_to :category

      t.timestamps
    end
  end
end
