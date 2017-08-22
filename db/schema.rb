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

ActiveRecord::Schema.define(version: 20170822020827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "ecda1"
    t.float "ecda2"
    t.float "ecda3"
    t.float "ecda4"
    t.float "ecca1"
    t.float "ecca2"
    t.float "ecca3"
    t.float "ecca4"
    t.float "ecva1"
    t.float "ecva2"
    t.float "ecva3"
    t.float "ecva4"
    t.float "ecva5"
    t.float "ecva6"
    t.float "ecva7"
    t.float "ecva8"
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cedula"
    t.string "User"
    t.string "ids"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "hour"
    t.integer "min"
    t.integer "sec"
    t.float "lcc1"
    t.float "lcc2"
    t.float "lcc3"
    t.float "lcc4"
    t.float "lcd1"
    t.float "lcd2"
    t.float "lcd3"
    t.float "lcd4"
    t.float "lcv1"
    t.float "lcv2"
    t.float "lcv3"
    t.float "lcv4"
    t.float "lcv5"
    t.float "lcv6"
    t.float "lcv7"
    t.float "lcv8"
    t.float "lvd1"
    t.float "lvd2"
    t.float "lvd3"
    t.float "lvd4"
    t.float "lvd5"
    t.float "lvd6"
    t.float "lvd7"
    t.float "lvd8"
  end

end
