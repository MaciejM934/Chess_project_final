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

ActiveRecord::Schema[7.0].define(version: 2023_06_26_194447) do
  create_table "boards", force: :cascade do |t|
    t.text "history_string"
    t.string "game_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "white_player_id"
    t.integer "black_player_id"
    t.string "new_move"
  end

  create_table "players", force: :cascade do |t|
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  create_table "players_boards", id: false, force: :cascade do |t|
    t.integer "player_id"
    t.integer "board_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["board_id"], name: "index_players_boards_on_board_id"
    t.index ["player_id"], name: "index_players_boards_on_player_id"
  end

end
