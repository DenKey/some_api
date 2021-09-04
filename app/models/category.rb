class Category < ApplicationRecord
  belongs_to :parent_category, class_name: "Category", optional: true
  has_many :subcategories, class_name: "Category", foreign_key: :parent_category_id, dependent: :destroy
  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true, uniqueness: true
end
