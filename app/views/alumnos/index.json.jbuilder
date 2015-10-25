json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :horario, :id_apoderado, :id_colegio, :id_furgon_integer
  json.url alumno_url(alumno, format: :json)
end
