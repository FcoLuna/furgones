class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadores do |t|
      t.string :nombre
      t.string :tipo
      t.integer :sueldo
      t.integer :id_furgon

      t.timestamps
    end
  end
end
