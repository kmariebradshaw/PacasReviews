# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2021_06_03_152859) do
  create_table "answers", force: :cascade do |t|
    t.string "text"
    t.text "response"
    t.boolean "other_description", default: false
    t.integer "question_id", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "title", null: false
    t.string "category"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "status", default: "approved"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.string "response_type"
  end

  create_table "responses", force: :cascade do |t|
    t.integer "vote", default: 0
    t.integer "answer_id", null: false
    t.text "description"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "text", null: false
    t.integer "rating", null: false
    t.string "author_first"
    t.string "author_last"
    t.boolean "staff_favorite", default: false
    t.integer "vote", default: 0
    t.string "author_email", null: false
    t.string "status", default: "pending"
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.integer "product_id"
    t.boolean "sticky", default: false
    t.boolean "favorite", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.boolean "approved", default: false, null: false
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
