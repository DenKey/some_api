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

  def category_ids=(ids)
    if categories.empty?
      categories << Category.where(id: ids)
    else
      delete_ids = category_ids - ids
      add_ids = ids - (category_ids & ids)

      categories.delete(*delete_ids) if delete_ids.present?
      categories << Category.where(id: add_ids) if add_ids.present?
    end
  end

  def category_ids
    categories.map(&:id)
  end

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
