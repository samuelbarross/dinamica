class CreateContratos < ActiveRecord::Migration[6.0]
  def change
    create_table :contratos do |t|
      t.references :prefeitura, null: false, foreign_key: true
      t.references :ano_letivo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
