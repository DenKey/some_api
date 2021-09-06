# frozen_string_literal: true

json.partial! 'category', category: @category
if is_include_subcategories
  json.subcategories @category.subcategories do |subcategory|
    json.partial! 'category', category: subcategory
  end
end
if is_include_products
  json.products @category.products do |product|
    json.partial! 'api/v1/products/product', product: product
  end
end
