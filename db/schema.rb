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

ActiveRecord::Schema.define(version: 2020_10_12_134643) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.index ["confirmation_token"], name: "index_admins_on_confirmation_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_admins_on_unlock_token", unique: true
  end

  create_table "classifications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.index ["name"], name: "index_classifications_on_name", unique: true
  end

  create_table "missions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "classification_id", null: false
    t.boolean "limited", default: false, null: false
    t.string "url"
    t.string "note"
    t.integer "N1_1", limit: 1, default: 0, null: false
    t.integer "N1_2", limit: 1, default: 0, null: false
    t.integer "N1_3", limit: 1, default: 0, null: false
    t.integer "N1_4", limit: 1, default: 0, null: false
    t.integer "N1_5", limit: 1, default: 0, null: false
    t.integer "N1_6", limit: 1, default: 0, null: false
    t.integer "N2_1", limit: 1, default: 0, null: false
    t.integer "N2_2", limit: 1, default: 0, null: false
    t.integer "N2_3", limit: 1, default: 0, null: false
    t.integer "N2_4", limit: 1, default: 0, null: false
    t.integer "N2_5", limit: 1, default: 0, null: false
    t.integer "N3_1", limit: 1, default: 0, null: false
    t.integer "N3_2", limit: 1, default: 0, null: false
    t.integer "N3_3", limit: 1, default: 0, null: false
    t.integer "N3_4", limit: 1, default: 0, null: false
    t.integer "N3_5", limit: 1, default: 0, null: false
    t.integer "N4_1", limit: 1, default: 0, null: false
    t.integer "N4_2", limit: 1, default: 0, null: false
    t.integer "N4_3", limit: 1, default: 0, null: false
    t.integer "N4_4", limit: 1, default: 0, null: false
    t.integer "N4_5", limit: 1, default: 0, null: false
    t.integer "N5_1", limit: 1, default: 0, null: false
    t.integer "N5_2", limit: 1, default: 0, null: false
    t.integer "N5_3", limit: 1, default: 0, null: false
    t.integer "N5_4", limit: 1, default: 0, null: false
    t.integer "N5_5", limit: 1, default: 0, null: false
    t.integer "N6_1", limit: 1, default: 0, null: false
    t.integer "N6_2", limit: 1, default: 0, null: false
    t.integer "N6_3", limit: 1, default: 0, null: false
    t.integer "N6_4", limit: 1, default: 0, null: false
    t.integer "N6_5", limit: 1, default: 0, null: false
    t.integer "N7_1", limit: 1, default: 0, null: false
    t.integer "N7_2_1", limit: 1, default: 0, null: false
    t.integer "N7_2_2", limit: 1, default: 0, null: false
    t.integer "N7_3_1", limit: 1, default: 0, null: false
    t.integer "N7_3_2", limit: 1, default: 0, null: false
    t.datetime "created_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.index ["classification_id"], name: "index_missions_on_classification_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "missions", "classifications"
end
