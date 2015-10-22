class CreateMujers < ActiveRecord::Migration
  def change
    create_table :mujers do |t|
      t.integer :edad
      t.string :sexo

      t.timestamps
    end
  end
end
