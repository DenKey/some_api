# frozen_string_literal: true

json.array!(@brands) do |brand|
  json.partial! 'brand', brand: brand
  if is_include_products
    json.products brand.products do |product|
      json.partial! 'api/v1/products/product', product: product
    end
  end
end
