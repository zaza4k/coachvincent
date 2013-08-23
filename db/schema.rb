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

ActiveRecord::Schema.define(:version => 20130825222521) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "avatar"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "exercices", :force => true do |t|
    t.string   "title",       :null => false
    t.text     "description"
    t.string   "muscles"
    t.text     "conseils"
    t.string   "series"
    t.string   "repetitions"
    t.string   "repos"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "foto"
  end

  create_table "programmeexercices", :force => true do |t|
    t.integer  "programme_id", :null => false
    t.integer  "exercice_id",  :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "programmes", :force => true do |t|
    t.string   "title",      :null => false
    t.text     "intro"
    t.text     "outro"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
