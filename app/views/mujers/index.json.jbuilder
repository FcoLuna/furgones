json.array!(@mujers) do |mujer|
  json.extract! mujer, :id, :edad, :sexo
  json.url mujer_url(mujer, format: :json)
end
