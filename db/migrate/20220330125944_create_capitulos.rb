class CreateCapitulos < ActiveRecord::Migration[6.0]
  def change
    create_table :capitulos do |t|
      t.string :nome
      t.integer :numero
      t.references :livro, null: false, foreign_key: true
      t.references :disciplina, null: false, foreign_key: true

      t.timestamps
    end
  end
end
