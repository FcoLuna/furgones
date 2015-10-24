json.array!(@furgons) do |furgon|
  json.extract! furgon, :id, :patente, :estado
  json.url furgon_url(furgon, format: :json)
end
