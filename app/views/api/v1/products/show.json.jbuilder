json.partial! 'product', product: @product
if is_include_items
  json.product_items @product.product_items do |product_item|
    json.partial! 'api/v1/product_items/product_item', product_item: product_item
  end
end
