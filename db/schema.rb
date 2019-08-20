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

ActiveRecord::Schema.define(version: 2019_08_20_162546) do

  create_table "answers", force: :cascade do |t|
    t.string "text"
    t.boolean "is_correct"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "point_value"
    t.string "category"
    t.string "question_text"
    t.string "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "answer"
  end

  create_table "rounds", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "rounds_questions", force: :cascade do |t|
    t.integer "question_id"
    t.integer "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_rounds_questions_on_question_id"
    t.index ["round_id"], name: "index_rounds_questions_on_round_id"
  end

  create_table "team_answers", force: :cascade do |t|
    t.integer "team_id"
    t.integer "answer_id"
    t.integer "question_id"
    t.integer "round_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_team_answers_on_answer_id"
    t.index ["question_id"], name: "index_team_answers_on_question_id"
    t.index ["round_id"], name: "index_team_answers_on_round_id"
    t.index ["team_id"], name: "index_team_answers_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "team_name"
    t.integer "correct_answers"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
