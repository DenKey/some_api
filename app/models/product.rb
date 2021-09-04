class Product < ApplicationRecord
  belongs_to :brand
  has_and_belongs_to_many :categories, dependent: :destroy
  has_many :product_items, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :available, presence: true
  validates :expiration_date, presence: true
  validates :beginning_date, presence: true

  validate :expiration_date_cannot_be_in_the_past,
           :beginning_date_cannot_be_earlier_or_same_as_expiration_date

  private

  def expiration_date_cannot_be_in_the_past
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end

  def beginning_date_cannot_be_earlier_or_same_as_expiration_date
    if beginning_date.present? && expiration_date.present? && expiration_date <= beginning_date
      errors.add(:beginning_date, "can't be earlier or the same date as expiration_date")
    end
  end
end
