# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_25_104031) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cycle_journals", force: :cascade do |t|
    t.bigint "cycle_id", null: false
    t.bigint "journal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cycle_id"], name: "index_cycle_journals_on_cycle_id"
    t.index ["journal_id"], name: "index_cycle_journals_on_journal_id"
  end

  create_table "cycles", force: :cascade do |t|
    t.boolean "active_cycle"
    t.string "start_date"
    t.integer "estimated_cycle_length"
    t.integer "cycle_length"
    t.integer "estimated_period_length"
    t.integer "period_length"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cycles_on_user_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "date"
    t.string "entry_details"
    t.bigint "cycle_journal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cycle_journal_id"], name: "index_entries_on_cycle_journal_id"
  end

  create_table "journals", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "answer"
    t.bigint "question_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_options_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "prompt"
    t.string "key"
    t.bigint "journal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journal_id"], name: "index_questions_on_journal_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cycle_journals", "cycles"
  add_foreign_key "cycle_journals", "journals"
  add_foreign_key "cycles", "users"
  add_foreign_key "entries", "cycle_journals"
  add_foreign_key "options", "questions"
  add_foreign_key "questions", "journals"
end
