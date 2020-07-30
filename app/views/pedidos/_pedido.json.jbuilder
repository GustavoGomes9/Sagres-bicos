json.extract! pedido, :id, :data_matrix, :preco, :data_fab, :data_pedido, :data_entrega, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
