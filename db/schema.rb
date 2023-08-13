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

ActiveRecord::Schema[7.0].define(version: 2023_08_13_152334) do
  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "auther"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "book_number"
    t.decimal "price"
  end

  create_table "books_customers", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "book_id", null: false
  end

  create_table "demos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date_of_birth"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.string "email"
    t.string "bio"
    t.boolean "terms_of_service"
    t.string "registration_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "point"
    t.integer "games_played"
  end

  create_table "person_demos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "number"
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
