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

ActiveRecord::Schema.define(version: 20170920202345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "businesses", force: :cascade do |t|
    t.string "name", null: false
    t.string "img_url"
    t.string "address", null: false
    t.string "cross_streets"
    t.string "neighborhood"
    t.float "lat", null: false
    t.float "long", null: false
    t.string "phone"
    t.string "site_url"
    t.string "menu_url"
    t.string "category", null: false
    t.float "rating", null: false
    t.string "cost", null: false
    t.text "hours", null: false
    t.integer "health_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_businesses_on_category"
    t.index ["cost"], name: "index_businesses_on_cost"
    t.index ["name"], name: "index_businesses_on_name"
    t.index ["rating"], name: "index_businesses_on_rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
