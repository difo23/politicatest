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

ActiveRecord::Schema.define(version: 20160211045127) do

  create_table "contactos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "celular"
    t.string   "telefono"
    t.string   "mesa"
    t.string   "paraje"
    t.string   "email"
    t.integer  "edad"
    t.string   "sexo"
    t.date     "fecha_ultimo_contacto"
    t.boolean  "intesion"
    t.integer  "enc_contacto_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "contactos", ["enc_contacto_id"], name: "index_contactos_on_enc_contacto_id"

  create_table "enc_contactos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "celular"
    t.string   "telefono"
    t.string   "mesa"
    t.string   "paraje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
