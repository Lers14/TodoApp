class CreateTareas < ActiveRecord::Migration[6.0]
  def change
    create_table :tareas do |t|
      t.string :Nombre
      t.string :descripcion
      t.string :importancia
      t.date :fecha

      t.timestamps
    end
  end
end
