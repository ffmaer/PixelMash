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

ActiveRecord::Schema.define(:version => 20120325090100) do

  create_table "games", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "player1"
    t.string   "player2"
    t.string   "draw1"
    t.string   "draw2"
    t.integer  "vote1"
    t.integer  "vote2"
    t.string   "p1_file_name"
    t.string   "p1_content_type"
    t.integer  "p1_file_size"
    t.datetime "p1_updated_at"
    t.string   "p2_file_name"
    t.string   "p2_content_type"
    t.integer  "p2_file_size"
    t.datetime "p2_updated_at"
  end

  create_table "tests", :force => true do |t|
    t.string   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
