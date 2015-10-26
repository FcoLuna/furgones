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

ActiveRecord::Schema.define(version: 20151025154331) do

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

  create_table "furgons", force: true do |t|
    t.string   "patente"
    t.string   "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


  create_table "trabajadors", force: true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "sueldo"
    t.integer  "id_furgon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
