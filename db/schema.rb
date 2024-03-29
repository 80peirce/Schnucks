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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121204032547) do

  create_table "hitters", :force => true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "position"
    t.integer  "atbats"
    t.integer  "runs"
    t.integer  "hits"
    t.float    "batting_average"
    t.integer  "home_runs"
    t.integer  "rbi"
    t.integer  "stolen_bases"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "schnucks_team_id"
  end

  create_table "pitchers", :force => true do |t|
    t.string   "name"
    t.string   "team"
    t.string   "games"
    t.string   "games_started"
    t.string   "innings_pitched"
    t.string   "wins"
    t.string   "losses"
    t.string   "saves"
    t.string   "walks"
    t.string   "strikeouts"
    t.string   "earned_runs"
    t.string   "era"
    t.string   "whip"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "hits"
    t.integer  "schnucks_team_id"
  end

  create_table "schnucks_games", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schnucks_teams", :force => true do |t|
    t.integer  "draft_slot"
    t.string   "owner"
    t.float    "game_score"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "schnucks_game_id"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.integer  "wins"
    t.integer  "losses"
    t.decimal  "total_points",    :precision => 5, :scale => 1
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.string   "email"
    t.integer  "rps_wins"
    t.integer  "rocks"
    t.integer  "papers"
    t.integer  "scissorses"
    t.string   "password_digest"
  end

end
