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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121212032216) do

  create_table "beads", :force => true do |t|
    t.boolean  "main"
    t.string   "style"
    t.string   "color"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "filename"
    t.integer  "amount"
    t.integer  "custom_made_id"
  end

  create_table "cart_items", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "cart_id"
    t.integer  "product_id"
    t.integer  "custom_made_id"
    t.float    "price"
    t.integer  "amount"
  end

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "complete"
  end

  create_table "clasps", :force => true do |t|
    t.string   "style"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "filename"
    t.integer  "custom_made_id"
  end

  create_table "custom_items", :force => true do |t|
    t.integer  "cart_id"
    t.integer  "custom_made_id"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "custom_mades", :force => true do |t|
    t.string   "category"
    t.integer  "hemp_id"
    t.integer  "clasp_id"
    t.integer  "pendant_id"
    t.integer  "main_bead_id"
    t.integer  "knot_id"
    t.integer  "length_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "main_bead_amount"
    t.integer  "spacer_bead_amount"
    t.integer  "spacer_bead_id"
  end

  create_table "favorites", :force => true do |t|
    t.integer  "user_ID"
    t.integer  "product_ID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hemps", :force => true do |t|
    t.string   "type_of_hemp"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "filename"
    t.integer  "custom_made_id"
  end

  create_table "knots", :force => true do |t|
    t.string   "style"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "filename"
    t.string   "category"
    t.integer  "custom_made_id"
  end

  create_table "lengths", :force => true do |t|
    t.string   "length"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "size"
    t.string   "category"
    t.integer  "custom_made_id"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_ID"
    t.integer  "product_ID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cart_id"
  end

  create_table "pendants", :force => true do |t|
    t.string   "style"
    t.string   "color"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "filename"
    t.integer  "custom_made_id"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.float    "price"
    t.boolean  "part_of_set"
    t.string   "color_description"
    t.integer  "quantity"
    t.string   "filename"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.boolean  "premade"
    t.string   "gender"
    t.string   "subcategory"
    t.boolean  "example"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "firstname"
    t.string   "lastname"
  end

end
