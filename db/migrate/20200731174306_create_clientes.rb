class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :first_name
      t.string :company
      t.string :cnpj
      t.string :number
      t.string :address

      t.timestamps
    end
  end
end
