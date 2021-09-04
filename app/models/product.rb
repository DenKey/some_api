class Product < ApplicationRecord
  belongs_to :brand
  has_and_belongs_to_many :category

  validates :name, presence: true
  validates :description, presence: true
end
