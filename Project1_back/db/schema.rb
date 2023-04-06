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

ActiveRecord::Schema[7.0].define(version: 2023_04_06_202336) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", primary_key: "employee_id", id: :integer, default: nil, force: :cascade do |t|
    t.boolean "manager"
    t.string "first_name", limit: 20
    t.string "last_name", limit: 20
    t.string "email", limit: 40
    t.string "password", limit: 30
    t.string "token", limit: 16
    t.index ["token"], name: "employees_token_key", unique: true
  end

  create_table "reimbursement_requests", primary_key: "reimbursement_id", id: :integer, default: nil, force: :cascade do |t|
    t.integer "submitter_id"
    t.float "amount"
    t.string "details", limit: 120
    t.string "approval_status", limit: 8
  end

  create_table "reimbursements", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "status"
    t.decimal "amount", precision: 6, scale: 2
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reimbursements_on_user_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "value", limit: 16
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "manager"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "reimbursement_requests", "employees", column: "submitter_id", primary_key: "employee_id", name: "reimbursement_requests_submitter_id_fkey"
  add_foreign_key "reimbursements", "users"
  add_foreign_key "tokens", "users"
end
