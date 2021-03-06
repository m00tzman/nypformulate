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

ActiveRecord::Schema.define(version: 20150618221833) do

  create_table "forms", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "shipment_id"
  end

  create_table "forms_shipments", id: false, force: :cascade do |t|
    t.integer "shipment_id", null: false
    t.integer "form_id",     null: false
  end

  add_index "forms_shipments", ["form_id", "shipment_id"], name: "index_forms_shipments_on_form_id_and_shipment_id"
  add_index "forms_shipments", ["shipment_id", "form_id"], name: "index_forms_shipments_on_shipment_id_and_form_id"

  create_table "shipment_forms", force: :cascade do |t|
    t.integer "shipment_id"
    t.integer "form_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.string   "date"
    t.string   "seal"
    t.string   "company"
    t.string   "trucker"
    t.string   "truckernumber"
    t.integer  "totalcases",    default: 0
    t.integer  "totalweight",   default: 0
    t.string   "deliverydate"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "day"
    t.string   "truckNumber"
  end

  create_table "skids", force: :cascade do |t|
    t.string   "number"
    t.string   "po"
    t.integer  "cases",       default: 0
    t.integer  "weight",      default: 0
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "shipment_id"
    t.string   "product"
  end

end
