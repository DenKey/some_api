class Brand < ApplicationRecord
  has_many :products, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :code, presence: true, uniqueness: true
end
