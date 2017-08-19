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

ActiveRecord::Schema.define(version: 20170819170059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cedula"
    t.integer "dato1"
    t.string "User"
    t.string "ids"
    t.string "year"
    t.string "month"
    t.string "day"
    t.string "hour"
    t.string "min"
    t.string "sec"
    t.string "lcc1"
    t.string "lcc2"
    t.string "lcc3"
    t.string "lcc4"
    t.string "lcd1"
    t.string "lcd2"
    t.string "lcd3"
    t.string "lcd4"
    t.string "lcv1"
    t.string "lcv2"
    t.string "lcv3"
    t.string "lcv4"
    t.string "lcv5"
    t.string "lcv6"
    t.string "lcv7"
    t.string "lcv8"
    t.string "lvd1"
    t.string "lvd2"
    t.string "lvd3"
    t.string "lvd4"
    t.string "lvd5"
    t.string "lvd6"
    t.string "lvd7"
    t.string "lvd8"
  end

end
