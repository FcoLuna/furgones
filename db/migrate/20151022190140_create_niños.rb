class CreateNiños < ActiveRecord::Migration
  def change
    create_table :niños do |t|
      t.string :nombre
      t.integer :apoderado_id
      t.string :horario
      t.integer :colegio_id

      t.timestamps
    end
  end
end
