class CreateFormacoes < ActiveRecord::Migration[6.0]
  def change
    create_table :formacoes do |t|
      t.string :nome
      t.references :capitulo, null: false, foreign_key: true
      t.text :descricao
      t.string :url

      t.timestamps
    end
  end
end
