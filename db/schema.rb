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

ActiveRecord::Schema.define(version: 20180315224929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_slots", force: :cascade do |t|
    t.string "time"
    t.string "patient"
    t.string "symptom"
    t.string "gp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gps", force: :cascade do |t|
    t.string "name"
    t.string "appointment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgeries", force: :cascade do |t|
    t.string "GP_name"
    t.string "GP_age"
    t.string "GP_gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
