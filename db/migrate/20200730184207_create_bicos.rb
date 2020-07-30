class CreateBicos < ActiveRecord::Migration[5.2]
  def change
    create_table :bicos do |t|
      t.string :ipe
      t.string :dk_code
      t.string :color
      t.string :flow_rate
      t.string :drilling
      t.timestamps
    end
  end
end
