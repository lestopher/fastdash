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

ActiveRecord::Schema.define(version: 20131017032438) do

  create_table "connection_table_columns", force: true do |t|
    t.string   "alias"
    t.string   "columnname"
    t.string   "columntype"
    t.string   "grouping"
    t.string   "foreignkey"
    t.boolean  "display"
    t.integer  "connection_table_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "null"
  end

  add_index "connection_table_columns", ["connection_table_id"], name: "index_connection_table_columns_on_connection_table_id"

  create_table "connection_tables", force: true do |t|
    t.string   "alias"
    t.string   "tablename"
    t.boolean  "display"
    t.integer  "connection_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "connection_tables", ["connection_id"], name: "index_connection_tables_on_connection_id"

  create_table "connections", force: true do |t|
    t.string   "host"
    t.integer  "port"
    t.string   "socket"
    t.string   "username"
    t.string   "password"
    t.string   "database"
    t.string   "encoding"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "adapter"
  end

  create_table "queries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
