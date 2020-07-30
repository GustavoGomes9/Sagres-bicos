class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :data_matrix
      t.string :preco
      t.string :data_fab
      t.string :data_pedido
      t.string :data_entrega

      t.timestamps
    end
  end
end
