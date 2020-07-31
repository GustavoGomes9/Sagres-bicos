class CreatePedidos < ActiveRecord::Migration[5.2]
  def change
    create_table :pedidos do |t|
      t.string :data_matrix
      t.string :preco
      t.date :data_fab
      t.date :data_pedido
      t.date :data_entrega

      t.timestamps
    end
  end
end
