json.array!(@trabajadors) do |trabajador|
  json.extract! trabajador, :id, :nombre, :tipo, :sueldo, :id_furgon
  json.url trabajador_url(trabajador, format: :json)
end
