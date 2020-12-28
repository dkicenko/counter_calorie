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

ActiveRecord::Schema.define(version: 20201122191537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lists", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "value_cal", precision: 10, scale: 2, default: "0.0"
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "lists_products", force: :cascade do |t|
    t.bigint "list_id"
    t.bigint "product_id"
    t.decimal "quantity", precision: 10, scale: 2, default: "1.0"
    t.index ["list_id"], name: "index_lists_products_on_list_id"
    t.index ["product_id"], name: "index_lists_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", default: ""
    t.decimal "proteins", precision: 10, scale: 2
    t.decimal "fats", precision: 10, scale: 2
    t.decimal "carbohydrates", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "password_digest", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end