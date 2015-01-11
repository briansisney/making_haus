# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150111060903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dish_groceries", force: :cascade do |t|
    t.integer  "grocery_item_id"
    t.integer  "dish_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "dish_groceries", ["dish_id"], name: "index_dish_groceries_on_dish_id", using: :btree
  add_index "dish_groceries", ["grocery_item_id"], name: "index_dish_groceries_on_grocery_item_id", using: :btree

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.text     "recipe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "dishes", ["user_id"], name: "index_dishes_on_user_id", using: :btree

  create_table "expense_responsibilities", force: :cascade do |t|
    t.integer  "expense_id"
    t.integer  "user_id"
    t.float    "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "expense_responsibilities", ["expense_id"], name: "index_expense_responsibilities_on_expense_id", using: :btree
  add_index "expense_responsibilities", ["user_id"], name: "index_expense_responsibilities_on_user_id", using: :btree

  create_table "expenses", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "receipt_id"
    t.date     "transaction_date"
    t.integer  "user_id"
    t.integer  "week_id"
    t.string   "expense_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "expenses", ["receipt_id"], name: "index_expenses_on_receipt_id", using: :btree
  add_index "expenses", ["user_id"], name: "index_expenses_on_user_id", using: :btree
  add_index "expenses", ["week_id"], name: "index_expenses_on_week_id", using: :btree

  create_table "grocery_items", force: :cascade do |t|
    t.integer  "ingredient_id"
    t.float    "amount"
    t.integer  "grocery_unit_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "grocery_items", ["grocery_unit_id"], name: "index_grocery_items_on_grocery_unit_id", using: :btree
  add_index "grocery_items", ["ingredient_id"], name: "index_grocery_items_on_ingredient_id", using: :btree

  create_table "grocery_units", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guest_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "guest_id"
    t.integer  "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "guest_lists", ["user_id"], name: "index_guest_lists_on_user_id", using: :btree
  add_index "guest_lists", ["week_id"], name: "index_guest_lists_on_week_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_dishes", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meal_dishes", ["dish_id"], name: "index_meal_dishes_on_dish_id", using: :btree
  add_index "meal_dishes", ["meal_id"], name: "index_meal_dishes_on_meal_id", using: :btree

  create_table "meals", force: :cascade do |t|
    t.string   "name"
    t.date     "meal_date"
    t.integer  "week_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meals", ["week_id"], name: "index_meals_on_week_id", using: :btree

  create_table "no_lists", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "no_lists", ["user_id"], name: "index_no_lists_on_user_id", using: :btree

  create_table "payments", force: :cascade do |t|
    t.date     "date_completed"
    t.float    "amount"
    t.string   "platform"
    t.integer  "actor_id"
    t.integer  "target_id"
    t.integer  "reporter_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.boolean  "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer  "week_id"
    t.integer  "user_id"
    t.date     "arrival_date"
    t.date     "departure_date"
    t.time     "arrival_time"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "schedules", ["user_id"], name: "index_schedules_on_user_id", using: :btree
  add_index "schedules", ["week_id"], name: "index_schedules_on_week_id", using: :btree

  create_table "user_allergies", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "allergy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_allergies", ["allergy_id"], name: "index_user_allergies_on_allergy_id", using: :btree
  add_index "user_allergies", ["user_id"], name: "index_user_allergies_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.string   "email"
    t.boolean  "guest"
    t.string   "shirt_size"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "member",     default: false
  end

  create_table "weeks", force: :cascade do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "dish_groceries", "dishes"
  add_foreign_key "dish_groceries", "grocery_items"
  add_foreign_key "dishes", "users"
  add_foreign_key "expense_responsibilities", "expenses"
  add_foreign_key "expense_responsibilities", "users"
  add_foreign_key "expenses", "receipts"
  add_foreign_key "expenses", "users"
  add_foreign_key "expenses", "weeks"
  add_foreign_key "grocery_items", "grocery_units"
  add_foreign_key "grocery_items", "ingredients"
  add_foreign_key "guest_lists", "users"
  add_foreign_key "guest_lists", "weeks"
  add_foreign_key "meal_dishes", "dishes"
  add_foreign_key "meal_dishes", "meals"
  add_foreign_key "meals", "weeks"
  add_foreign_key "no_lists", "users"
  add_foreign_key "schedules", "users"
  add_foreign_key "schedules", "weeks"
  add_foreign_key "user_allergies", "allergies"
  add_foreign_key "user_allergies", "users"
end
