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

ActiveRecord::Schema.define(version: 2019_10_16_154204) do

  create_table "appeals", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_appeals_on_student_id"
  end

  create_table "applies", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_applies_on_post_id"
    t.index ["student_id"], name: "index_applies_on_student_id"
  end

  create_table "business_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "careers", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "role"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_careers_on_student_id"
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.string "url"
    t.string "address"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "company_business_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "business_content_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["business_content_id"], name: "index_company_business_contents_on_business_content_id"
    t.index ["company_id"], name: "index_company_business_contents_on_company_id"
  end

  create_table "company_sectors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_company_sectors_on_company_id"
    t.index ["sector_id"], name: "index_company_sectors_on_sector_id"
  end

  create_table "company_work_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "work_content_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_company_work_contents_on_company_id"
    t.index ["work_content_id"], name: "index_company_work_contents_on_work_content_id"
  end

  create_table "fields", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "post_fields", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "field_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["field_id"], name: "index_post_fields_on_field_id"
    t.index ["post_id"], name: "index_post_fields_on_post_id"
  end

  create_table "post_sectors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_post_sectors_on_post_id"
    t.index ["sector_id"], name: "index_post_sectors_on_sector_id"
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "tel_number"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.string "image"
    t.string "title"
    t.string "period"
    t.text "content"
    t.string "salary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_posts_on_company_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "title"
    t.text "content"
    t.integer "evaluation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_reviews_on_company_id"
  end

  create_table "sectors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.string "name"
    t.integer "level"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_skills_on_student_id"
  end

  create_table "student_sectors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "sector_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_student_sectors_on_sector_id"
    t.index ["student_id"], name: "index_student_sectors_on_student_id"
  end

  create_table "student_work_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "work_content_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_student_work_contents_on_student_id"
    t.index ["work_content_id"], name: "index_student_work_contents_on_work_content_id"
  end

  create_table "students", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "image"
    t.string "first_name"
    t.string "last_name"
    t.string "first_name_kana"
    t.string "last_name_kana"
    t.integer "gender"
    t.integer "age"
    t.integer "prefecture"
    t.string "university"
    t.string "faculty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "summaries", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.string "title"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_summaries_on_company_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "email"
    t.boolean "is_company", default: false
    t.boolean "is_student", default: false
    t.string "password_digest"
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "work_contents", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appeals", "students"
  add_foreign_key "applies", "posts"
  add_foreign_key "applies", "students"
  add_foreign_key "careers", "students"
  add_foreign_key "companies", "users"
  add_foreign_key "company_business_contents", "business_contents"
  add_foreign_key "company_business_contents", "companies"
  add_foreign_key "company_sectors", "companies"
  add_foreign_key "company_sectors", "sectors"
  add_foreign_key "company_work_contents", "companies"
  add_foreign_key "company_work_contents", "work_contents"
  add_foreign_key "post_fields", "fields"
  add_foreign_key "post_fields", "posts"
  add_foreign_key "post_sectors", "posts"
  add_foreign_key "post_sectors", "sectors"
  add_foreign_key "posts", "companies"
  add_foreign_key "reviews", "companies"
  add_foreign_key "skills", "students"
  add_foreign_key "student_sectors", "sectors"
  add_foreign_key "student_sectors", "students"
  add_foreign_key "student_work_contents", "students"
  add_foreign_key "student_work_contents", "work_contents"
  add_foreign_key "students", "users"
  add_foreign_key "summaries", "companies"
end
