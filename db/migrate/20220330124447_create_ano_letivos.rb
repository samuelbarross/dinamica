class CreateAnoLetivos < ActiveRecord::Migration[6.0]
  def change
    create_table :ano_letivos do |t|
      t.integer :ano

      t.timestamps
    end
  end
end
