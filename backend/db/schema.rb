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

ActiveRecord::Schema.define(version: 2019_10_26_062302) do

  create_table "ants", force: :cascade do |t|
    t.integer "colony_id"
    t.integer "commons_id"
  end

  create_table "colonies", force: :cascade do |t|
  end

  create_table "commons", force: :cascade do |t|
    t.integer "colony_id"
  end

  create_table "game_times", force: :cascade do |t|
    t.integer "colony_id"
    t.integer "day"
    t.string "time_of_day"
  end

  create_table "guard_rooms", force: :cascade do |t|
    t.integer "colony_id"
  end

  create_table "nurseries", force: :cascade do |t|
    t.integer "colony_id"
  end

  create_table "queens", force: :cascade do |t|
  end

end
