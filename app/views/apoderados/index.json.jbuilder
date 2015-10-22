json.array!(@apoderados) do |apoderado|
  json.extract! apoderado, :id, :nombre, :telefono, :paga
  json.url apoderado_url(apoderado, format: :json)
end
