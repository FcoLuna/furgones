class CreateApoderados < ActiveRecord::Migration
  def change
    create_table :apoderados do |t|
      t.string :nombre
      t.integer :telefono
      t.integer :paga

      t.timestamps
    end
  end
end
