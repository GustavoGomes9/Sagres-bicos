class Pedido < ApplicationRecord
    belongs_to :bico, optional: true
end
