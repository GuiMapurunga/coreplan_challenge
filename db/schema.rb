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

ActiveRecord::Schema[7.1].define(version: 2024_06_01_001952) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "adminpack"
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computer_rams", force: :cascade do |t|
    t.bigint "computer_id", null: false
    t.bigint "ram_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["computer_id"], name: "index_computer_rams_on_computer_id"
    t.index ["ram_id"], name: "index_computer_rams_on_ram_id"
  end

  create_table "computers", force: :cascade do |t|
    t.bigint "cpu_id", null: false
    t.bigint "motherboard_id", null: false
    t.bigint "gpu_id", null: false
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_computers_on_client_id"
    t.index ["cpu_id"], name: "index_computers_on_cpu_id"
    t.index ["gpu_id"], name: "index_computers_on_gpu_id"
    t.index ["motherboard_id"], name: "index_computers_on_motherboard_id"
  end

  create_table "cpus", force: :cascade do |t|
    t.bigint "brand_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_cpus_on_brand_id"
  end

  create_table "gpus", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "name"
    t.boolean "integrated_graph"
    t.boolean "amd_compatibility"
    t.boolean "intel_compatibility"
    t.integer "max_ram"
    t.integer "max_ram_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rams", force: :cascade do |t|
    t.string "name"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "computer_rams", "computers"
  add_foreign_key "computer_rams", "rams"
  add_foreign_key "computers", "clients"
  add_foreign_key "computers", "cpus"
  add_foreign_key "computers", "gpus"
  add_foreign_key "computers", "motherboards"
  add_foreign_key "cpus", "brands"
end
