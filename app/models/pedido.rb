class Pedido < ApplicationRecord
    belongs_to :bicos, optional: true
end
