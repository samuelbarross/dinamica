class CreateCidades < ActiveRecord::Migration[6.0]
  def change
    create_table :cidades do |t|
      t.string :nome, limit: 200
      t.references :estado, null: false, foreign_key: true
      t.string :codigo_ibge, limit: 10

      t.timestamps
    end
  end
end
