class CreateLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :livros do |t|
      t.string :nome
      t.references :serie, null: false, foreign_key: true
      t.integer :volume
      t.string :ano_edicao, limit: 50

      t.timestamps
    end
  end
end
