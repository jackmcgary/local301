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

ActiveRecord::Schema.define(version: 20140815175834) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "photo_uid"
    t.string   "website"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text     "description"
    t.boolean  "is_public"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.string   "photo_uid"
    t.string   "phone"
    t.string   "email"
    t.string   "address"
    t.date     "date_of_birth"
    t.string   "hometown"
    t.string   "website"
    t.string   "twitter"
    t.string   "instagram"
    t.string   "facebook"
    t.string   "flickr"
    t.string   "pinterest"
    t.string   "linkedin"
    t.string   "membership_status"
    t.string   "significant_other_name"
    t.date     "joined_on"
    t.string   "gender"
    t.text     "where_have_you_been"
    t.text     "where_will_you_go"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_members", force: true do |t|
    t.integer  "project_id"
    t.integer  "member_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.string   "photo_uid"
    t.string   "description"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
