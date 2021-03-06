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

ActiveRecord::Schema.define(version: 20161119224713) do

  create_table "arcgis", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_arcgis_on_user_id"
  end

  create_table "archives", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "name"
    t.string   "description"
    t.string   "category"
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_pictures_on_user_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "image"
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_shapes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cpf"
    t.string   "telephone"
    t.string   "registry"
    t.string   "password_digest"
    t.boolean  "adm"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
