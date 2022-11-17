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

ActiveRecord::Schema.define(version: 20221117113207) do

  create_table "admissions", force: :cascade do |t|
    t.integer  "room_id"
    t.date     "admissionDate"
    t.date     "dischargeDate"
    t.integer  "appointment_id"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["appointment_id"], name: "index_admissions_on_appointment_id"
    t.index ["room_id"], name: "index_admissions_on_room_id"
    t.index ["user_id"], name: "index_admissions_on_user_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "patient_id"
    t.integer  "doctor_id"
    t.integer  "department_id"
    t.date     "date"
    t.string   "timeSlot"
    t.integer  "token"
    t.text     "problem"
    t.boolean  "diagnosed"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["department_id"], name: "index_appointments_on_department_id"
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.integer  "doctor_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_departments_on_doctor_id"
    t.index ["user_id"], name: "index_departments_on_user_id"
  end

  create_table "diagnoses", force: :cascade do |t|
    t.integer  "appointment_id"
    t.string   "disease"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.index ["appointment_id"], name: "index_diagnoses_on_appointment_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "surname"
    t.string   "othernames"
    t.date     "dob"
    t.string   "specialization"
    t.string   "phone"
    t.string   "email"
    t.string   "gender"
    t.text     "details"
    t.text     "address"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_doctors_on_user_id"
  end

  create_table "kins", force: :cascade do |t|
    t.string   "surname"
    t.string   "othernames"
    t.string   "phone"
    t.string   "idNo"
    t.integer  "patient_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_kins_on_patient_id"
    t.index ["user_id"], name: "index_kins_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "surname"
    t.string   "othernames"
    t.string   "age"
    t.string   "gender"
    t.string   "phone"
    t.string   "address"
    t.string   "idNo"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "drug"
    t.string   "quantity"
    t.string   "duration"
    t.integer  "diagnosis_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["diagnosis_id"], name: "index_prescriptions_on_diagnosis_id"
    t.index ["user_id"], name: "index_prescriptions_on_user_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "ward_id"
    t.integer  "number"
    t.boolean  "availability"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_rooms_on_user_id"
    t.index ["ward_id"], name: "index_rooms_on_ward_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wards", force: :cascade do |t|
    t.string   "name"
    t.integer  "doctor_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_wards_on_doctor_id"
    t.index ["user_id"], name: "index_wards_on_user_id"
  end

end
