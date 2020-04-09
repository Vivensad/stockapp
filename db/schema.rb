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

ActiveRecord::Schema.define(version: 2020_04_09_125627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accompanentfee", force: :cascade do |t|
    t.text "description"
    t.float "amount", default: 0.0
    t.float "percents", default: 0.0
    t.string "currency"
  end

  create_table "currency", force: :cascade do |t|
    t.string "code"
    t.float "startingcash", default: 0.0
    t.float "commissions", default: 0.0
    t.float "deposits", default: 0.0
    t.float "dividends", default: 0.0
    t.float "nettradessales", default: 0.0
    t.float "nettradespurchase", default: 0.0
    t.float "withholdingtax", default: 0.0
    t.float "agio", default: 0.0
    t.float "endingcash", default: 0.0
    t.float "endingsettledcash", default: 0.0
  end

  create_table "dividends", force: :cascade do |t|
    t.string "currency"
    t.datetime "proceededdate"
    t.text "description"
    t.float "amount", default: 0.0
    t.float "tax", default: 0.0
    t.text "taxdescription"
  end

  create_table "forex", force: :cascade do |t|
    t.string "currency"
    t.string "symbol"
    t.datetime "proceededdate"
    t.float "tprice", default: 0.0
    t.float "proceed", default: 0.0
    t.float "feeinusd", default: 0.0
    t.float "mtminusd", default: 0.0
    t.string "code"
  end

  create_table "trades", force: :cascade do |t|
    t.string "currency"
    t.string "stockcode"
    t.datetime "proceededdate"
    t.integer "quanity", default: 0
    t.float "tprice", default: 0.0
    t.float "cprice", default: 0.0
    t.float "proceeds", default: 0.0
    t.float "fee", default: 0.0
    t.float "basis", default: 0.0
    t.float "plrealized", default: 0.0
    t.float "plmtm", default: 0.0
    t.string "code"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
