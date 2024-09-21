class CreateRecordatorios < ActiveRecord::Migration[7.2]
  def change
    create_table :recordatorios do |t|
      t.integer  :tipo
      t.datetime :fecha_inicio
      t.datetime :fecha_final
    
      t.timestamps null: false
    end
  end
end
