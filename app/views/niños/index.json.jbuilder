json.array!(@niños) do |niño|
  json.extract! niño, :id, :nombre, :apoderado_id, :horario, :colegio_id
  json.url niño_url(niño, format: :json)
end
