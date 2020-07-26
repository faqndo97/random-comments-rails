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

ActiveRecord::Schema.define(version: 2020_07_26_025728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Comments", id: :serial, force: :cascade do |t|
    t.text "text", null: false
    t.string "name", limit: 255, null: false
    t.integer "likes", default: 1
    t.datetime "createdAt", null: false
    t.datetime "updatedAt", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "name", null: false
    t.text "body", null: false
    t.integer "likes", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
