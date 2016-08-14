json.array!(@products) do |product|
  json.extract! product, :id, :code_product, :brand_product, :size_product, :type_product, :description_product, :supplier_product, :price_product, :image_product, :status_product
  json.url product_url(product, format: :json)
end
