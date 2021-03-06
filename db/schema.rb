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

ActiveRecord::Schema.define(version: 2019_08_05_202830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "indications", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "plataform_id"
    t.bigint "user_indicator_id"
    t.bigint "user_indicated_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_indications_on_movie_id"
    t.index ["plataform_id"], name: "index_indications_on_plataform_id"
    t.index ["user_indicated_id"], name: "index_indications_on_user_indicated_id"
    t.index ["user_indicator_id"], name: "index_indications_on_user_indicator_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "titulo"
    t.string "imdb"
    t.string "poster"
    t.string "ano"
    t.string "nota"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plataforms", force: :cascade do |t|
    t.string "nome"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "indications", "movies"
  add_foreign_key "indications", "plataforms"
  add_foreign_key "indications", "users", column: "user_indicated_id"
  add_foreign_key "indications", "users", column: "user_indicator_id"
end
