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

ActiveRecord::Schema[7.0].define(version: 2023_02_19_160913) do
  create_table "businessmen", force: :cascade do |t|
    t.string "b_company"
    t.string "b_name"
    t.string "b_email"
    t.integer "b_age"
    t.integer "b_contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealers", force: :cascade do |t|
    t.string "d_name"
    t.string "d_email"
    t.integer "d_age"
    t.integer "d_contact"
    t.integer "businessman_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["businessman_id"], name: "index_dealers_on_businessman_id"
  end

  create_table "investors", force: :cascade do |t|
    t.string "i_name"
    t.string "i_email"
    t.integer "i_age"
    t.integer "i_contact"
    t.integer "i_ammount"
    t.integer "businessman_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["businessman_id"], name: "index_investors_on_businessman_id"
  end

  add_foreign_key "dealers", "businessmen"
  add_foreign_key "investors", "businessmen"
end
