json.array!(@catalogs) do |catalog|
  json.extract! catalog, :id, :image, :price, :description
  json.url catalog_url(catalog, format: :json)
end
