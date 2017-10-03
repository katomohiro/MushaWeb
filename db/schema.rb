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

ActiveRecord::Schema.define(version: 20171002083924) do

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "region"
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "articles_industries", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "industry_id", null: false
    t.index ["article_id"], name: "index_articles_industries_on_article_id"
    t.index ["industry_id"], name: "index_articles_industries_on_industry_id"
  end

  create_table "articles_occupations", id: false, force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "occupation_id", null: false
    t.index ["article_id"], name: "index_articles_occupations_on_article_id"
    t.index ["occupation_id"], name: "index_articles_occupations_on_occupation_id"
  end

  create_table "career_industries", force: :cascade do |t|
    t.integer "industry_id"
    t.integer "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_career_industries_on_career_id"
    t.index ["industry_id"], name: "index_career_industries_on_industry_id"
  end

  create_table "career_occupations", force: :cascade do |t|
    t.integer "occupation_id"
    t.integer "career_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_id"], name: "index_career_occupations_on_career_id"
    t.index ["occupation_id"], name: "index_career_occupations_on_occupation_id"
  end

  create_table "careers", force: :cascade do |t|
    t.integer "person_id"
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "careers_industries", force: :cascade do |t|
    t.integer "career_id"
    t.integer "industry_id"
    t.index ["career_id"], name: "index_careers_industries_on_career_id"
    t.index ["industry_id"], name: "index_careers_industries_on_industry_id"
  end

  create_table "careers_occupations", id: false, force: :cascade do |t|
    t.integer "career_id"
    t.integer "occupation_id"
    t.index ["career_id"], name: "index_careers_occupations_on_career_id"
    t.index ["occupation_id"], name: "index_careers_occupations_on_occupation_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "person_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries_users", id: false, force: :cascade do |t|
    t.integer "industry_id", null: false
    t.integer "user_id", null: false
    t.index ["industry_id"], name: "index_industries_users_on_industry_id"
    t.index ["user_id"], name: "index_industries_users_on_user_id"
  end

  create_table "industry_users", force: :cascade do |t|
    t.integer "industry_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["industry_id"], name: "index_industry_users_on_industry_id"
    t.index ["user_id"], name: "index_industry_users_on_user_id"
  end

  create_table "occupations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "occupations_users", id: false, force: :cascade do |t|
    t.integer "occupation_id", null: false
    t.integer "user_id", null: false
    t.index ["occupation_id"], name: "index_occupations_users_on_occupation_id"
    t.index ["user_id"], name: "index_occupations_users_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", default: "", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id"
    t.text "other_naitei"
    t.boolean "is_student"
    t.string "musha_term"
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.integer "admin"
    t.integer "area_id"
    t.string "musha_term"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
