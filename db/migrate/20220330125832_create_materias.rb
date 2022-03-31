class CreateMaterias < ActiveRecord::Migration[6.0]
  def change
    create_table :materias do |t|
      t.string :nome
      t.string :codigo, limit: 10

      t.timestamps
    end
  end
end
