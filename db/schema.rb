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

ActiveRecord::Schema.define(version: 2019_06_08_051514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_services", force: :cascade do |t|
    t.string "collect_type"
    t.integer "pay_date"
    t.decimal "value"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "accounts", force: :cascade do |t|
    t.decimal "original_value"
    t.decimal "open_value"
    t.integer "pay_date"
    t.string "comments"
    t.string "account_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "apartaments", force: :cascade do |t|
    t.integer "number"
    t.string "ocupation_status"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "person_tenant_id"
    t.bigint "person_owner_id"
    t.index ["person_owner_id"], name: "index_apartaments_on_person_owner_id"
    t.index ["person_tenant_id"], name: "index_apartaments_on_person_tenant_id"
  end

  create_table "cashes", force: :cascade do |t|
    t.decimal "balance"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "condo_accounts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "expenditures", force: :cascade do |t|
    t.string "expenditure_type"
    t.decimal "value"
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gas", force: :cascade do |t|
    t.string "gas_clock"
    t.date "reading_date"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "type_person"
    t.string "document"
    t.string "email"
    t.string "cell"
    t.string "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
