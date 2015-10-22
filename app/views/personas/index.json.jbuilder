json.array!(@personas) do |persona|
  json.extract! persona, :id, :nombre, :rut, :nacimiento
  json.url persona_url(persona, format: :json)
end
