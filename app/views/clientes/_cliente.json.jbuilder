json.extract! cliente, :id, :first_name, :company, :cnpj, :number, :address, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
