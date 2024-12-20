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

ActiveRecord::Schema[7.2].define(version: 2024_10_13_201255) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "donation_buckets", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.float "amount"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "donor_id", null: false
    t.bigint "donation_bucket_id"
    t.index ["donation_bucket_id"], name: "index_donations_on_donation_bucket_id"
    t.index ["donor_id"], name: "index_donations_on_donor_id"
  end

  create_table "donor_contacts", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "donor_id", null: false
    t.text "note"
    t.index ["donor_id"], name: "index_donor_contacts_on_donor_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin", default: false, null: false
    t.boolean "is_donor", default: false, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "apt_suite"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "donations", "donation_buckets"
  add_foreign_key "donations", "users", column: "donor_id"
  add_foreign_key "donor_contacts", "users", column: "donor_id"
end
