# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :brand, null: false, foreign_key: true
      t.date :beginning_date
      t.date :expiration_date
      t.boolean :available

      t.timestamps
    end
  end
end
