json.array!(@product_items) do |product_item|
  json.partial! 'product_item', product_item: product_item
end