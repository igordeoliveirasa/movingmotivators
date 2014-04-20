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

ActiveRecord::Schema.define(version: 20140420181740) do

  create_table "feedbacks", force: true do |t|
    t.integer  "user_id"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feedbacks", ["user_id"], name: "index_feedbacks_on_user_id"

  create_table "game_levels", force: true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_levels", ["game_id"], name: "index_game_levels_on_game_id"

  create_table "games", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "motivators", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_game_level_results", force: true do |t|
    t.integer  "user_game_level_id"
    t.integer  "motivator_id"
    t.integer  "x"
    t.integer  "y"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_game_level_results", ["motivator_id"], name: "index_user_game_level_results_on_motivator_id"
  add_index "user_game_level_results", ["user_game_level_id"], name: "index_user_game_level_results_on_user_game_level_id"

  create_table "user_game_levels", force: true do |t|
    t.integer  "user_game_id"
    t.integer  "game_level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_game_levels", ["game_level_id"], name: "index_user_game_levels_on_game_level_id"
  add_index "user_game_levels", ["user_game_id"], name: "index_user_game_levels_on_user_game_id"

  create_table "user_games", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_games", ["game_id"], name: "index_user_games_on_game_id"
  add_index "user_games", ["user_id"], name: "index_user_games_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
