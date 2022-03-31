class CreateDisciplinas < ActiveRecord::Migration[6.0]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.string :codigo, limit: 10
      t.references :materia, null: false, foreign_key: true

      t.timestamps
    end
  end
end
