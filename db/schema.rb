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

ActiveRecord::Schema.define(version: 20151112014221) do

  create_table "alumnos", force: true do |t|
    t.string   "nombre"
    t.string   "horario"
    t.integer  "id_apoderado"
    t.integer  "id_colegio"
    t.string   "id_furgon_integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "apoderados", force: true do |t|
    t.string   "nombre"
    t.integer  "telefono"
    t.integer  "paga"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colegios", force: true do |t|
    t.string   "nombre"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "furgones", force: true do |t|
    t.string   "patente"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trabajadores", force: true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "sueldo"
    t.integer  "id_furgon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.integer  "tipo"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
