class AddPerfilToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :perfil, :integer
  end
end
