class CreatePrefeituras < ActiveRecord::Migration[6.0]
  def change
    create_table :prefeituras do |t|
      t.string :nome
      t.references :cidade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
