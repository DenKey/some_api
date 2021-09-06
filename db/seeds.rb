# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create!([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create!(name: 'Luke', movie: movies.first)

User.create!(username: "admin", password: "admin")

brand_1 = Brand.create!(name: "Tracking brand", description: "Tracking and hiking brand", code: "tracking_brand")
brand_2 = Brand.create!(name: "Football brand", description: "Football and soccer brand", code: "football_brand")
brand_3 = Brand.create!(name: "Rugby brand", description: "Rugby brand", code: "rugby_brand")

product_1 = Product.create!(name: "Super bag", description: "mount bag",
                           brand_id: brand_1.id, available: true, beginning_date: 10.days.ago.to_date,
                           expiration_date: Date.tomorrow)
product_2 = Product.create!(name: "Light bag", description: "mount bag",
                           brand_id: brand_1.id, available: true, beginning_date: 800.days.ago.to_date,
                           expiration_date: 1000.days.after.to_date)
product_3 = Product.create!(name: "Cool bag", description: "mount bag",
                           brand_id: brand_1.id, available: true, beginning_date: 100.days.ago.to_date,
                           expiration_date: 100.days.after.to_date)

category_1  = Category.create!(name: "Tracking", description: "Nice category", code: "tracking")
category_2 = Category.create!(name: "Tracking equipments", description: "The best equipments",
                             code: "soccer", parent_category_id: category_1.id)
category_3 = Category.create!(name: "Woman bags", description: "The best bags",
                             code: "woman_bags", parent_category_id: category_2.id)

product_item_1 = ProductItem.create!(name: "Gulliver 100", description: "text",
                                     price: 100000, size: "S", color: "green",
                                     available: true, product_id: product_1.id)
product_item_2 = ProductItem.create!(name: "Gulliver 100", description: "text",
                                     price: 100000, size: "L", color: "green",
                                     available: true, product_id: product_1.id)
product_item_3 = ProductItem.create!(name: "Gulliver 100", description: "text",
                                     price: 100000, size: "M", color: "green",
                                     available: true, product_id: product_1.id)

product_1.categories << [category_1, category_2, category_3]
