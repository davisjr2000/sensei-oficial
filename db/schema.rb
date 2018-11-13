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

ActiveRecord::Schema.define(version: 2018_11_13_192415) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "sensei_id"
    t.date "date"
    t.integer "time", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensei_id"], name: "index_availabilities_on_sensei_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.boolean "reserved"
    t.string "video"
    t.bigint "sensei_id"
    t.bigint "students_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensei_id"], name: "index_lessons_on_sensei_id"
    t.index ["students_id"], name: "index_lessons_on_students_id"
  end

  create_table "sensei_subjects", force: :cascade do |t|
    t.bigint "sensei_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensei_id"], name: "index_sensei_subjects_on_sensei_id"
    t.index ["subject_id"], name: "index_sensei_subjects_on_subject_id"
  end

  create_table "senseis", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_senseis_on_user_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "title"
    t.bigint "parent_id"
    t.float "price_per_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id"], name: "index_subjects_on_parent_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "full_name"
    t.boolean "sensei"
    t.boolean "admin", default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "availabilities", "senseis"
  add_foreign_key "lessons", "senseis"
  add_foreign_key "lessons", "students", column: "students_id"
  add_foreign_key "sensei_subjects", "senseis"
  add_foreign_key "sensei_subjects", "subjects"
  add_foreign_key "senseis", "users"
  add_foreign_key "students", "users"
end
