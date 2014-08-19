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

ActiveRecord::Schema.define(version: 20140818175744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: true do |t|
    t.string   "brand"
    t.string   "category"
    t.string   "condition"
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "offers", force: true do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "description"
    t.integer  "price"
    t.boolean  "disponibility"
    t.integer  "User_id"
    t.integer  "Bike_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["Bike_id"], name: "index_offers_on_Bike_id", using: :btree
  add_index "offers", ["User_id"], name: "index_offers_on_User_id", using: :btree

  create_table "reviews", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "rating"
    t.integer  "Offer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["Offer_id"], name: "index_reviews_on_Offer_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
