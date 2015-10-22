class CreateColegios < ActiveRecord::Migration
  def change
    create_table :colegios do |t|
      t.string :nombre
      t.integer :telefono

      t.timestamps
    end
  end
end
