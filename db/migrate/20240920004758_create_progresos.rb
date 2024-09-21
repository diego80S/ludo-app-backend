class CreateProgresos < ActiveRecord::Migration[7.2]
  def change
    create_table :progresos do |t|
      t.integer :paso
      t.timestamps
    end
  end
end
