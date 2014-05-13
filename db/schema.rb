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

ActiveRecord::Schema.define(version: 20140513120409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "celebrities", force: true do |t|
    t.string   "name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vote_neti"
    t.integer  "vote_sife"
    t.integer  "vote_fesi"
    t.integer  "vote_tine"
    t.integer  "vote_feni"
    t.integer  "vote_tise"
    t.integer  "vote_seti"
    t.integer  "vote_nife"
    t.integer  "vote_sefi"
    t.integer  "vote_nite"
    t.integer  "vote_teni"
    t.integer  "vote_fise"
    t.integer  "vote_tesi"
    t.integer  "vote_fine"
    t.integer  "vote_nefi"
    t.integer  "vote_site"
  end

  create_table "characters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "name"
    t.integer  "vote_neti"
    t.integer  "vote_sife"
    t.integer  "vote_fesi"
    t.integer  "vote_tine"
    t.integer  "vote_feni"
    t.integer  "vote_tise"
    t.integer  "vote_seti"
    t.integer  "vote_nife"
    t.integer  "vote_sefi"
    t.integer  "vote_nite"
    t.integer  "vote_teni"
    t.integer  "vote_fise"
    t.integer  "vote_tesi"
    t.integer  "vote_fine"
    t.integer  "vote_nefi"
    t.integer  "vote_site"
  end

  create_table "characters_to_universes", id: false, force: true do |t|
    t.integer  "universe_id"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "characters_to_universes", ["character_id"], name: "index_characters_to_universes_on_character_id", using: :btree
  add_index "characters_to_universes", ["universe_id", "character_id"], name: "index_characters_to_universes_on_universe_id_and_character_id", unique: true, using: :btree
  add_index "characters_to_universes", ["universe_id"], name: "index_characters_to_universes_on_universe_id", using: :btree

  create_table "socionics_types", force: true do |t|
    t.string   "im_1st"
    t.string   "im_2nd"
    t.string   "im_3rd"
    t.string   "im_4th"
    t.string   "im_5th"
    t.string   "im_6th"
    t.string   "im_7th"
    t.string   "im_8th"
    t.string   "quadra"
    t.string   "club"
    t.string   "temperament"
    t.string   "communication_style"
    t.string   "romance_style"
    t.string   "type_four_letter"
    t.string   "type_three_letter"
    t.string   "type_two_im"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "universes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "vote_neti"
    t.integer  "vote_sife"
    t.integer  "vote_fesi"
    t.integer  "vote_tine"
    t.integer  "vote_feni"
    t.integer  "vote_tise"
    t.integer  "vote_seti"
    t.integer  "vote_nife"
    t.integer  "vote_sefi"
    t.integer  "vote_nite"
    t.integer  "vote_teni"
    t.integer  "vote_fise"
    t.integer  "vote_tesi"
    t.integer  "vote_fine"
    t.integer  "vote_nefi"
    t.integer  "vote_site"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
