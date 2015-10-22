json.array!(@colegios) do |colegio|
  json.extract! colegio, :id, :nombre, :telefono
  json.url colegio_url(colegio, format: :json)
end
