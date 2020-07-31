# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_31_194955) do

  create_table "bicos", force: :cascade do |t|
    t.string "ipe"
    t.string "dk_code"
    t.string "color"
    t.string "flow_rate"
    t.string "drilling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "first_name"
    t.string "company"
    t.string "cnpj"
    t.string "number"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "data_matrix"
    t.string "preco"
    t.date "data_fab"
    t.date "data_pedido"
    t.date "data_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.integer "bico_id"
    t.index ["bico_id"], name: "index_pedidos_on_bico_id"
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

end
