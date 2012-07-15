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

ActiveRecord::Schema.define(:version => 20120715204530) do

  create_table "conta_pagars", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.date     "data_vencimento"
    t.integer  "pessoa_pagar_id"
    t.float    "valor"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "user_id"
  end

  add_index "conta_pagars", ["pessoa_pagar_id"], :name => "index_conta_pagars_on_pessoa_pagar_id"

  create_table "conta_recebers", :force => true do |t|
    t.string   "nome"
    t.string   "descricao"
    t.date     "data_vencimento"
    t.integer  "pessoa_receber_id"
    t.float    "valor"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "conta_recebers", ["pessoa_receber_id"], :name => "index_conta_recebers_on_pessoa_receber_id"

  create_table "pessoa_pagars", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "email"
    t.string   "tel"
    t.integer  "user_id"
  end

  create_table "pessoa_recebers", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "tel"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
