class AddColumnToUsuarios < ActiveRecord::Migration[7.2]
  def change
    add_column :usuarios, :email, :string
  end
end
