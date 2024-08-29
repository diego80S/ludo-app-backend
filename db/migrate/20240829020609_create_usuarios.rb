class CreateUsuarios < ActiveRecord::Migration[7.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :email
      t.integer :progreso
      t.string :alertas
      t.string :comportamiento
      t.string :rol

      t.timestamps
    end
  end
end
