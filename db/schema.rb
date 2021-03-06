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

ActiveRecord::Schema.define(version: 20180205173433) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "full_name"
    t.integer "mobile"
    t.string "email"
    t.string "asking_price"
    t.boolean "status", default: false
    t.integer "puppy_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "testimonial_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "full_name"
    t.integer "mobile"
    t.string "email"
    t.string "message"
    t.boolean "status", default: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "breed"
    t.string "gender"
    t.string "color"
    t.string "nickname"
    t.string "title"
    t.string "price"
    t.string "recomendation"
    t.string "description"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puppies", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "breed"
    t.string "gender"
    t.string "color"
    t.string "nickname"
    t.string "title"
    t.string "price"
    t.string "recomendation"
    t.string "description"
    t.string "image1_file_name"
    t.string "image1_content_type"
    t.integer "image1_file_size"
    t.datetime "image1_updated_at"
    t.string "image2_file_name"
    t.string "image2_content_type"
    t.integer "image2_file_size"
    t.datetime "image2_updated_at"
    t.string "image3_file_name"
    t.string "image3_content_type"
    t.integer "image3_file_size"
    t.datetime "image3_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "title"
    t.string "message"
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "tricks", force: :cascade do |t|
    t.string "title"
    t.string "step1"
    t.string "step2"
    t.string "step3"
    t.string "step4"
    t.string "extratips"
    t.string "img1"
    t.string "img2"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "superadmin_role", default: false
    t.boolean "supervisor_role", default: false
    t.boolean "user_role", default: true
    t.integer "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
