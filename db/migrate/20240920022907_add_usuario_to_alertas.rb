class AddUsuarioToAlertas < ActiveRecord::Migration[7.2]
  def change
    add_reference :alertas, :usuario, null: false, foreign_key: true
  end
end
