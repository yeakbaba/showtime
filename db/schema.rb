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

ActiveRecord::Schema.define(version: 20160211084337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_images", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "cover"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "reviewer_name", default: "Anonim Pompacı"
    t.integer  "rate",          default: 5
    t.text     "review"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "user_subscriptions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "amounth"
    t.datetime "start"
    t.integer  "days"
    t.integer  "priority"
    t.integer  "special"
    t.boolean  "supported"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_tags", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "phone2"
    t.text     "self_dsc"
    t.text     "company_dsc"
    t.integer  "country"
    t.integer  "city"
    t.integer  "county"
    t.integer  "province"
    t.integer  "skin"
    t.integer  "hair"
    t.integer  "eyes"
    t.integer  "height_cm"
    t.integer  "weight_kg"
    t.integer  "cup_cm"
    t.integer  "cupsize"
    t.integer  "price_incall_a_session"
    t.integer  "price_outcall_a_session"
    t.integer  "price_incall_an_hour"
    t.integer  "price_outcall_an_hour"
    t.integer  "price_incall_an_and_half_hour"
    t.integer  "price_outcall_an_and_half_hour"
    t.integer  "price_incall_two_hours"
    t.integer  "price_outcall_two_hours"
    t.integer  "price_incall_night"
    t.integer  "price_outcall_night"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

end
