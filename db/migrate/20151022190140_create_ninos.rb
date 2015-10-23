class CreateNinos < ActiveRecord::Migration
  def change
    create_table :ninos do |t|
      t.string :nombre
      t.integer :apoderado_id
      t.string :horario
      t.integer :colegio_id

      t.timestamps
    end
  end
end
