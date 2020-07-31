class Pedido < ApplicationRecord
    belongs_to :bico, optional: true
    belongs_to :cliente, optional: true
end
