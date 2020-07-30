class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :data_matrix
      t.string :preco
      t.timestamp :data_fab
      t.timestamp :data_pedido
      t.timestamp :data_entrega

      t.timestamps
    end
  end
end
