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

ActiveRecord::Schema.define(version: 20140801160511) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: true do |t|
    t.string   "image_url",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pet_id"
  end

  create_table "pet_rental_requests", force: true do |t|
    t.integer  "pet_id",                           null: false
    t.integer  "requester_id",                     null: false
    t.string   "status",       default: "Pending", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "pets", force: true do |t|
    t.integer  "owner_id",                                                                                                      null: false
    t.string   "name",                                                                                                          null: false
    t.string   "animal",                                                                                                        null: false
    t.integer  "age"
    t.string   "color"
    t.string   "gender",                                                                                                        null: false
    t.text     "bio"
    t.string   "image_url",  default: "http://cf.ltkcdn.net/socialnetworking/images/std/168646-150x150-Cat-Avatar-Primary.jpg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.float    "lat"
    t.float    "lng"
  end

  create_table "users", force: true do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["session_token"], name: "index_users_on_session_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
