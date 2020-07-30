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

ActiveRecord::Schema.define(version: 2020_07_30_222821) do

  create_table "bicos", force: :cascade do |t|
    t.string "ipe"
    t.string "dk_code"
    t.string "color"
    t.string "flow_rate"
    t.string "drilling"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.string "data_matrix"
    t.string "preco"
    t.datetime "data_fab"
    t.datetime "data_pedido"
    t.datetime "data_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
