# frozen_string_literal: true

class Category < ApplicationRecord
  belongs_to :parent_category, class_name: 'Category', optional: true
  has_many :subcategories, class_name: 'Category', foreign_key: :parent_category_id, dependent: :destroy
  has_and_belongs_to_many :products

  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true, uniqueness: true

  validate :category_cant_be_as_parent_to_itself

  private

  def category_cant_be_as_parent_to_itself
    if parent_category_id.present? && parent_category_id == id
      errors.add(:parent_category_id, "can't be as parent category to itself")
    end
  end
end
