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

ActiveRecord::Schema.define(version: 2020_11_21_142816) do

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

  create_table "areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "level", limit: 1, default: 1, null: false
    t.bigint "parent_area_id"
    t.string "name", limit: 3, null: false
    t.string "column_name", limit: 6
    t.datetime "created_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "current_timestamp(6)" }, null: false
    t.index ["level", "parent_area_id", "name"], name: "index_areas_on_level_and_parent_area_id_and_name", unique: true
    t.index ["parent_area_id"], name: "index_areas_on_parent_area_id"
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
    t.integer "n1_1", limit: 1, default: 0, null: false
    t.integer "n1_2", limit: 1, default: 0, null: false
    t.integer "n1_3", limit: 1, default: 0, null: false
    t.integer "n1_4", limit: 1, default: 0, null: false
    t.integer "n1_5", limit: 1, default: 0, null: false
    t.integer "n1_6", limit: 1, default: 0, null: false
    t.integer "n2_1", limit: 1, default: 0, null: false
    t.integer "n2_2", limit: 1, default: 0, null: false
    t.integer "n2_3", limit: 1, default: 0, null: false
    t.integer "n2_4", limit: 1, default: 0, null: false
    t.integer "n2_5", limit: 1, default: 0, null: false
    t.integer "n3_1", limit: 1, default: 0, null: false
    t.integer "n3_2", limit: 1, default: 0, null: false
    t.integer "n3_3", limit: 1, default: 0, null: false
    t.integer "n3_4", limit: 1, default: 0, null: false
    t.integer "n3_5", limit: 1, default: 0, null: false
    t.integer "n4_1", limit: 1, default: 0, null: false
    t.integer "n4_2", limit: 1, default: 0, null: false
    t.integer "n4_3", limit: 1, default: 0, null: false
    t.integer "n4_4", limit: 1, default: 0, null: false
    t.integer "n4_5", limit: 1, default: 0, null: false
    t.integer "n5_1", limit: 1, default: 0, null: false
    t.integer "n5_2", limit: 1, default: 0, null: false
    t.integer "n5_3", limit: 1, default: 0, null: false
    t.integer "n5_4", limit: 1, default: 0, null: false
    t.integer "n5_5", limit: 1, default: 0, null: false
    t.integer "n6_1", limit: 1, default: 0, null: false
    t.integer "n6_2", limit: 1, default: 0, null: false
    t.integer "n6_3", limit: 1, default: 0, null: false
    t.integer "n6_4", limit: 1, default: 0, null: false
    t.integer "n6_5", limit: 1, default: 0, null: false
    t.integer "n7_1", limit: 1, default: 0, null: false
    t.integer "n7_2_1", limit: 1, default: 0, null: false
    t.integer "n7_2_2", limit: 1, default: 0, null: false
    t.integer "n7_3_1", limit: 1, default: 0, null: false
    t.integer "n7_3_2", limit: 1, default: 0, null: false
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
