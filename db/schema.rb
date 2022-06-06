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

ActiveRecord::Schema.define(version: 2022_06_06_074151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookmarks", force: :cascade do |t|
    t.boolean "get_alerts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.index ["event_id"], name: "index_bookmarks_on_event_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "cart_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "token_id", null: false
    t.bigint "cart_id", null: false
    t.index ["cart_id"], name: "index_cart_items_on_cart_id"
    t.index ["token_id"], name: "index_cart_items_on_token_id"
  end

  create_table "carts", force: :cascade do |t|
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "music_genre"
    t.string "country"
    t.string "city"
    t.string "address"
    t.time "start_time"
    t.time "end_time"
    t.string "description"
    t.string "event_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "tier"
    t.float "original_price"
    t.integer "no_available"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "event_id", null: false
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  create_table "tokens", force: :cascade do |t|
    t.string "status"
    t.string "NFT_id"
    t.string "unlockable"
    t.float "price"
    t.boolean "unlocked"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "ticket_id", null: false
    t.index ["ticket_id"], name: "index_tokens_on_ticket_id"
    t.index ["user_id"], name: "index_tokens_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.string "status"
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cart_id", null: false
    t.index ["cart_id"], name: "index_transactions_on_cart_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "events"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "cart_items", "carts"
  add_foreign_key "cart_items", "tokens"
  add_foreign_key "carts", "users"
  add_foreign_key "tickets", "events"
  add_foreign_key "tokens", "tickets"
  add_foreign_key "tokens", "users"
  add_foreign_key "transactions", "carts"
end
