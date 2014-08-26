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

ActiveRecord::Schema.define(version: 20140826024522) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pollutants", force: true do |t|
    t.datetime "hour"
    t.float    "station"
    t.float    "pm10"
    t.float    "O3"
    t.float    "nO2"
    t.float    "sO2"
    t.float    "CO"
    t.float    "pm25"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pollutants", ["hour", "station"], name: "by_hour_station", unique: true, using: :btree

end
