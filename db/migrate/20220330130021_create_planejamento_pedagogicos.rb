class CreatePlanejamentoPedagogicos < ActiveRecord::Migration[6.0]
  def change
    create_table :planejamento_pedagogicos do |t|
      t.references :capitulo, null: false, foreign_key: true
      t.integer :numero_semana

      t.timestamps
    end
  end
end
