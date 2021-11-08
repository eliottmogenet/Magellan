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

ActiveRecord::Schema.define(version: 2021_11_08_212553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "coding_practices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "notice_period"
    t.string "healthcare"
    t.string "other_benefits"
  end

  create_table "customers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.string "funding_stage"
    t.string "industry"
    t.text "challenges"
    t.text "architecture"
    t.text "dev_ops"
    t.text "employer_backend_stack"
    t.text "employer_frontend_stack"
    t.text "tools"
  end

  create_table "experience_comments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "matching_id"
    t.bigint "previous_experience_id"
    t.string "comment"
    t.index ["matching_id"], name: "index_experience_comments_on_matching_id"
    t.index ["previous_experience_id"], name: "index_experience_comments_on_previous_experience_id"
  end

  create_table "matchings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "req_id"
    t.text "matching_description"
    t.integer "timezone_overlap"
    t.integer "wage_dif"
    t.string "status"
    t.integer "rate"
    t.text "comment"
    t.text "message_content"
    t.integer "level"
    t.index ["req_id"], name: "index_matchings_on_req_id"
    t.index ["user_id"], name: "index_matchings_on_user_id"
  end

  create_table "previous_experiences", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "employer_id"
    t.integer "number"
    t.text "description"
    t.string "started_at"
    t.string "end_at"
    t.string "team_size"
    t.string "fundraising"
    t.boolean "employed_more_than_one_year"
    t.boolean "us_company_xp"
    t.boolean "b2c"
    t.boolean "smb_customers"
    t.boolean "entreprise_customers"
    t.boolean "microservices"
    t.boolean "high_volume_data"
    t.boolean "small_team_xp"
    t.boolean "scale_up_xp"
    t.index ["employer_id"], name: "index_previous_experiences_on_employer_id"
    t.index ["user_id"], name: "index_previous_experiences_on_user_id"
  end

  create_table "reqs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.integer "salary_range"
    t.bigint "customer_id"
    t.index ["customer_id"], name: "index_reqs_on_customer_id"
  end

  create_table "speaking_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stacks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_coding_practices", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "coding_practice_id"
    t.index ["coding_practice_id"], name: "index_user_coding_practices_on_coding_practice_id"
    t.index ["user_id"], name: "index_user_coding_practices_on_user_id"
  end

  create_table "user_speaking_languages", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "speaking_language_id"
    t.string "level"
    t.string "country"
    t.index ["speaking_language_id"], name: "index_user_speaking_languages_on_speaking_language_id"
    t.index ["user_id"], name: "index_user_speaking_languages_on_user_id"
  end

  create_table "user_stacks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "stack_id"
    t.boolean "able_to_learn"
    t.integer "years_xp"
    t.index ["stack_id"], name: "index_user_stacks_on_stack_id"
    t.index ["user_id"], name: "index_user_stacks_on_user_id"
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
    t.boolean "tech_recruiter"
    t.string "job"
    t.string "citizenship"
    t.integer "expected_wage"
    t.string "timezone"
    t.string "city"
    t.string "status"
    t.string "linkedin_profile"
    t.string "github_profile"
    t.boolean "full_remote_only"
    t.boolean "contractor_possible"
    t.bigint "customer_id"
    t.bigint "country_id"
    t.string "university"
    t.boolean "relocation_possible", default: false
    t.string "next_jobs"
    t.string "area_median_wage"
    t.text "competitive_profile"
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["customer_id"], name: "index_users_on_customer_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "experience_comments", "matchings"
  add_foreign_key "experience_comments", "previous_experiences"
  add_foreign_key "matchings", "reqs"
  add_foreign_key "matchings", "users"
  add_foreign_key "previous_experiences", "employers"
  add_foreign_key "previous_experiences", "users"
  add_foreign_key "reqs", "customers"
  add_foreign_key "user_coding_practices", "coding_practices"
  add_foreign_key "user_coding_practices", "users"
  add_foreign_key "user_speaking_languages", "speaking_languages"
  add_foreign_key "user_speaking_languages", "users"
  add_foreign_key "user_stacks", "stacks"
  add_foreign_key "user_stacks", "users"
  add_foreign_key "users", "countries"
  add_foreign_key "users", "customers"
end
