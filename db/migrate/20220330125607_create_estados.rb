class CreateEstados < ActiveRecord::Migration[6.0]
  def change
    create_table :estados do |t|
      t.string :nome, limit: 100
      t.string :sigla, limit: 2
      t.string :codigo_ibge, limit: 2

      t.timestamps
    end
  end
end
