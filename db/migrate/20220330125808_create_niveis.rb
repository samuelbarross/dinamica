class CreateNiveis < ActiveRecord::Migration[6.0]
  def change
    create_table :niveis do |t|
      t.string :nome
      t.string :codigo, limit: 5

      t.timestamps
    end
  end
end
