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

ActiveRecord::Schema.define(version: 20161018001334) do

  create_table "firstaids", force: :cascade do |t|
    t.string   "firstAidName",        limit: 48,  null: false
    t.string   "firstAidDescription", limit: 128
    t.integer  "symptom_id"
    t.integer  "vital_id"
    t.integer  "severity_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "firstaids", ["firstAidName"], name: "index_firstaids_on_firstAidName"
  add_index "firstaids", ["severity_id"], name: "index_firstaids_on_severity_id"
  add_index "firstaids", ["symptom_id"], name: "index_firstaids_on_symptom_id"
  add_index "firstaids", ["vital_id"], name: "index_firstaids_on_vital_id"

  create_table "how_tos", force: :cascade do |t|
    t.integer  "how_to_id",    limit: 4,   null: false
    t.string   "how_to_title", limit: 36,  null: false
    t.string   "how_to_url",   limit: 256
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "how_tos", ["how_to_id"], name: "index_how_tos_on_how_to_id"
  add_index "how_tos", ["how_to_title"], name: "index_how_tos_on_how_to_title"

  create_table "palliative_cares", force: :cascade do |t|
    t.string   "pCare_title", limit: 48,   null: false
    t.text     "pCare_para1", limit: 4095
    t.text     "pCare_para2", limit: 4095
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "palliative_cares", ["pCare_title"], name: "index_palliative_cares_on_pCare_title"

  create_table "severities", force: :cascade do |t|
    t.string   "severity_level", limit: 48, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "severities", ["severity_level"], name: "index_severities_on_severity_level"

  create_table "survival_guides", force: :cascade do |t|
    t.string   "guide_title", limit: 48,   null: false
    t.text     "guide_para1", limit: 4095
    t.text     "guide_para2", limit: 4095
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "survival_guides", ["guide_title"], name: "index_survival_guides_on_guide_title"

  create_table "symptoms", force: :cascade do |t|
    t.string   "symptom_type", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "symptoms", ["symptom_type"], name: "index_symptoms_on_symptom_type"

  create_table "vitals", force: :cascade do |t|
    t.string   "vital_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "vitals", ["vital_type"], name: "index_vitals_on_vital_type"

end
