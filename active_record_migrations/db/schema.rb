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

ActiveRecord::Schema.define(version: 20171005025106) do

  create_table "basket", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "product_id", null: false
    t.index ["product_id", "user_id"], name: "index_basket_on_product_id_and_user_id"
    t.index ["user_id", "product_id"], name: "index_basket_on_user_id_and_product_id"
  end

  create_table "customers_products", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
    t.index ["customer_id", "product_id"], name: "index_customers_products_on_customer_id_and_product_id"
    t.index ["product_id", "customer_id"], name: "index_customers_products_on_product_id_and_customer_id"
  end

  create_table "goodproducts", force: :cascade do |t|
    t.string "name"
    t.integer "part_number"
    t.index ["name"], name: "index_goodproducts_on_name"
    t.index ["part_number"], name: "index_goodproducts_on_part_number"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "price"
    t.integer "user_id"
    t.decimal "cost", precision: 5, scale: 2
    t.string "supplier_type"
    t.integer "supplier_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["supplier_type", "supplier_id"], name: "index_products_on_supplier_type_and_supplier_id"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

end
