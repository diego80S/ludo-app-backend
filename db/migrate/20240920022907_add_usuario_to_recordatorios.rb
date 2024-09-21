class AddUsuarioToRecordatorios < ActiveRecord::Migration[7.2]
  def change
    add_reference :recordatorios, :usuario, null: false, foreign_key: true
  end
end
