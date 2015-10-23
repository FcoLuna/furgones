json.array!(@ninos) do |nino|
  json.extract! nino, :id, :nombre, :apoderado_id, :horario, :colegio_id
  json.url nino_url(niño, format: :json)
end
