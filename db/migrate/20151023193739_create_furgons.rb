class CreateFurgons < ActiveRecord::Migration
  def change
    create_table :furgones do |t|
      t.string :patente
      t.string :estado
      
      t.timestamps
    end
  end
end
