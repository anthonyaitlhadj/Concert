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


ActiveRecord::Schema.define(version: 20161121100506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string  "contenu"
    t.integer "user_id"
    t.string  "pseudo"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.string  "firstname"
    t.string  "lastname"
    t.string  "email"
    t.integer "nb_tickets"

  create_table "concerts", force: :cascade do |t|
    t.string  "concerts"
    t.string  "concertname"
    t.string  "date"
    t.integer "places"
  end

  create_table "shows", force: :cascade do |t|
    t.string  "name"
    t.date    "date"
    t.integer "place"
    t.string  "adress"
    t.string  "price"
  end

  create_table "users", force: :cascade do |t|

    t.string   "name"
    t.string   "email"
    t.string   "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "admin"
    t.string   "pseudo"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "reservations", "users"

    t.string   "email",                        null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "firstname"
    t.string   "lastname"
    t.integer  "admin"
    t.string   "pseudo"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  end

  add_foreign_key "comments", "users"

end
