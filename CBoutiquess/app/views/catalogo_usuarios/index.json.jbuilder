json.array!(@catalogo_usuarios) do |catalogo_usuario|
  json.extract! catalogo_usuario, :id, :tipo
  json.url catalogo_usuario_url(catalogo_usuario, format: :json)
end
