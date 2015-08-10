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

ActiveRecord::Schema.define(version: 20150810083137) do

  create_table "admin_discounts", force: :cascade do |t|
    t.datetime "started_at"
    t.datetime "ended_at"
    t.string   "title"
    t.text     "description"
    t.string   "variant"
    t.decimal  "amount"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "step"
    t.string   "discounted_product"
  end

  create_table "admin_discounts_admin_products", force: :cascade do |t|
    t.integer "admin_discounts_id"
    t.integer "admin_products_id"
  end

  add_index "admin_discounts_admin_products", ["admin_discounts_id"], name: "index_admin_discounts_admin_products_on_admin_discounts_id"
  add_index "admin_discounts_admin_products", ["admin_products_id"], name: "index_admin_discounts_admin_products_on_admin_products_id"

  create_table "admin_products", force: :cascade do |t|
    t.string   "title"
    t.string   "category"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end