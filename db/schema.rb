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

ActiveRecord::Schema.define(version: 2018_07_22_231049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_categories", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_event_categories_on_category_id"
    t.index ["event_id"], name: "index_event_categories_on_event_id"
  end

  create_table "event_favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_meeting_id"], name: "index_event_favorites_on_event_meeting_id"
    t.index ["user_id"], name: "index_event_favorites_on_user_id"
  end

  create_table "event_meetings", force: :cascade do |t|
    t.bigint "event_id"
    t.string "title"
    t.text "description"
    t.string "address"
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_meetings_on_event_id"
  end

  create_table "event_rsvps", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_meeting_id"
    t.boolean "coming"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_meeting_id"], name: "index_event_rsvps_on_event_meeting_id"
    t.index ["user_id"], name: "index_event_rsvps_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.string "address"
    t.boolean "monthly"
    t.boolean "weekly"
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "forum_posts", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "forum_topic_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["forum_topic_id"], name: "index_forum_posts_on_forum_topic_id"
    t.index ["user_id"], name: "index_forum_posts_on_user_id"
  end

  create_table "forum_topic_categories", force: :cascade do |t|
    t.bigint "forum_topic_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_forum_topic_categories_on_category_id"
    t.index ["forum_topic_id"], name: "index_forum_topic_categories_on_forum_topic_id"
  end

  create_table "forum_topics", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["category_id"], name: "index_forum_topics_on_category_id"
    t.index ["user_id"], name: "index_forum_topics_on_user_id"
  end

  create_table "forums", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_forums_on_user_id"
  end

  create_table "meeting_favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "meetup_meeting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_meeting_id"], name: "index_meeting_favorites_on_meetup_meeting_id"
    t.index ["user_id"], name: "index_meeting_favorites_on_user_id"
  end

  create_table "meeting_rsvps", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "meetup_meeting_id"
    t.boolean "coming"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_meeting_id"], name: "index_meeting_rsvps_on_meetup_meeting_id"
    t.index ["user_id"], name: "index_meeting_rsvps_on_user_id"
  end

  create_table "meetup_categories", force: :cascade do |t|
    t.bigint "meetup_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_meetup_categories_on_category_id"
    t.index ["meetup_id"], name: "index_meetup_categories_on_meetup_id"
  end

  create_table "meetup_meetings", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "address"
    t.string "start"
    t.string "end"
    t.bigint "meetup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meetup_id"], name: "index_meetup_meetings_on_meetup_id"
  end

  create_table "meetups", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.string "address"
    t.boolean "weekly"
    t.boolean "monthly"
    t.string "start"
    t.string "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_meetups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "event_categories", "categories"
  add_foreign_key "event_categories", "events"
  add_foreign_key "event_favorites", "event_meetings"
  add_foreign_key "event_favorites", "users"
  add_foreign_key "event_meetings", "events"
  add_foreign_key "event_rsvps", "event_meetings"
  add_foreign_key "event_rsvps", "users"
  add_foreign_key "events", "users"
  add_foreign_key "forum_posts", "forum_topics"
  add_foreign_key "forum_posts", "users"
  add_foreign_key "forum_topic_categories", "categories"
  add_foreign_key "forum_topic_categories", "forum_topics"
  add_foreign_key "forum_topics", "categories"
  add_foreign_key "forum_topics", "users"
  add_foreign_key "meeting_favorites", "meetup_meetings"
  add_foreign_key "meeting_favorites", "users"
  add_foreign_key "meeting_rsvps", "meetup_meetings"
  add_foreign_key "meeting_rsvps", "users"
  add_foreign_key "meetup_categories", "categories"
  add_foreign_key "meetup_categories", "meetups"
  add_foreign_key "meetup_meetings", "meetups"
  add_foreign_key "meetups", "users"
end
