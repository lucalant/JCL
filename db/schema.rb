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

ActiveRecord::Schema.define(version: 20130622104220) do

  create_table "contacts", force: true do |t|
    t.string   "text"
    t.string   "map"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "designers", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.text     "description"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "top",         default: 0, null: false
  end

  create_table "distributions", force: true do |t|
    t.string   "presentation"
    t.string   "img_url"
    t.string   "map"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "distributions_services", force: true do |t|
    t.integer  "service_id"
    t.integer  "distribution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "about"
    t.text     "video"
    t.string   "img_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events_designers", force: true do |t|
    t.integer  "event_id"
    t.integer  "distribution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: true do |t|
    t.string   "text"
    t.text     "form"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "home_products", force: true do |t|
    t.string   "images"
    t.string   "text"
    t.string   "introduction"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "top",          default: false, null: false
  end

  create_table "home_products_distributions", force: true do |t|
    t.integer  "home_product_id"
    t.integer  "distribution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logins", force: true do |t|
    t.string   "user"
    t.string   "password"
    t.string   "image_url"
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partners", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "img_url"
    t.string   "contact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presses", force: true do |t|
    t.text     "news"
    t.text     "magazine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "services", force: true do |t|
    t.string   "description"
    t.string   "img_url"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "top_c_lients", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "img_url"
    t.string   "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspaces", force: true do |t|
    t.string   "presentation"
    t.string   "img_url"
    t.string   "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspaces_distributions", force: true do |t|
    t.integer  "workspace_id"
    t.string   "distribution_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
