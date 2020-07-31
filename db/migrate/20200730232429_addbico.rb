class Addbico < ActiveRecord::Migration[5.2]
  def change
    add_reference :pedidos, :bico, foreign_key: true
  end
end
