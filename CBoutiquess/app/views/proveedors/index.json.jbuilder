json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :name, :phone, :email, :city, :neighborhood, :street_number, :product
  json.url proveedor_url(proveedor, format: :json)
end
