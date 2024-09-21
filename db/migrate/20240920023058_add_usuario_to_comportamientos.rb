class AddUsuarioToComportamientos < ActiveRecord::Migration[7.2]
  def change
    add_reference :comportamientos, :usuario, null: false, foreign_key: true
  end
end
