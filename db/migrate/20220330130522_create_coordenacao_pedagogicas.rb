class CreateCoordenacaoPedagogicas < ActiveRecord::Migration[6.0]
  def change
    create_table :coordenacao_pedagogicas do |t|
      t.references :prefeitura, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :ano_letivo, null: false, foreign_key: true
      t.references :contrato, null: false, foreign_key: true

      t.timestamps
    end
  end
end
