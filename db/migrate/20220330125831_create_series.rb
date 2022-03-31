class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :nome
      t.string :codigo, limit: 5
      t.references :nivel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
