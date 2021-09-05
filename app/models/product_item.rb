class ProductItem < ApplicationRecord
  belongs_to :product

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :size, inclusion: { in: %w(S M L),
                                message: "%{value} is not a valid size" }
  validates :color, inclusion: { in: %w(blue green white),
                                 message: "%{value} is not a valid color" }

  validates_uniqueness_of :size, scope: :color
end
