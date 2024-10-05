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

ActiveRecord::Schema[7.2].define(version: 2024_10_02_231809) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "geoserver_levels", force: :cascade do |t|
    t.string "geoserver_level"
    t.string "geoserver_username"
    t.string "geoserver_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.jsonb "permission_json", default: {}
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login_name"
    t.string "password_digest"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "geoserver_level_id"
    t.index ["geoserver_level_id"], name: "index_users_on_geoserver_level_id"
    t.index ["login_name"], name: "index_users_on_login_name"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "users", "geoserver_levels", on_delete: :restrict
  add_foreign_key "users", "roles", on_delete: :restrict
end
