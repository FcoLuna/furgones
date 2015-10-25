class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nombre
      t.string :horario
      t.integer :id_apoderado
      t.integer :id_colegio
      t.string :id_furgon_integer

      t.timestamps
    end
  end
end
