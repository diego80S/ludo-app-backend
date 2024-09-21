class CreateComportamientos < ActiveRecord::Migration[7.2]
  def change
    create_table :comportamientos do |t|
      t.integer  :tipo
      t.string   :descripcion
      t.datetime :fecha   
    
      t.timestamps null: false
    end
  end
end
