class AddUsuarioToProgresos < ActiveRecord::Migration[7.2]
  def change
    add_reference :progresos, :usuario, null: false, foreign_key: true
  end
end
