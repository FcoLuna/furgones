class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.string :nombre
      t.string :tipo
      t.integer :sueldo
      t.integer :id_furgon

      t.timestamps
    end
  end
end
