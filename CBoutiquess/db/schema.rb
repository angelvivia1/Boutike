# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160803030910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catalogo_usuarios", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "catalogs", force: :cascade do |t|
    t.string   "image"
    t.string   "price"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "street_number"
    t.string   "email"
    t.integer  "age"
    t.string   "celphone"
    t.date     "date_hire"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "employees", ["email"], name: "index_employees_on_email", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "code_product"
    t.string   "brand_product"
    t.string   "size_product"
    t.string   "type_product"
    t.text     "description_product"
    t.string   "supplier_product"
    t.string   "price_product"
    t.string   "image_product"
    t.string   "status_product"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "stocks"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "city"
    t.string   "neighborhood"
    t.string   "street_number"
    t.string   "product"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "pro_rfc"
  end

  add_index "proveedors", ["email"], name: "index_proveedors_on_email", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "token_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "typeUser"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
