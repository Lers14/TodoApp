json.extract! tarea, :id, :Nombre, :descripcion, :importancia, :fecha, :created_at, :updated_at
json.url tarea_url(tarea, format: :json)
