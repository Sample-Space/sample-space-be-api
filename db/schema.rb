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

ActiveRecord::Schema.define(version: 2022_05_13_201625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kits", force: :cascade do |t|
    t.string "name"
    t.integer "kick"
    t.integer "snare"
    t.integer "hh_closed"
    t.integer "hh_open"
    t.integer "melody"
    t.integer "texture"
    t.integer "one_shot_1"
    t.integer "one_shot_2"
    t.string "groove_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "name"
    t.string "source_name"
    t.string "sound_url"
    t.string "thumbnail_url"
    t.string "description"
    t.string "info_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
