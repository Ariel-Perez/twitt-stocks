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

ActiveRecord::Schema.define(version: 20150324160950) do

  create_table "aliases", force: true do |t|
    t.integer  "ticker_id"
    t.string   "nick"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "aliases", ["ticker_id"], name: "index_aliases_on_ticker_id"

  create_table "bigrams", force: true do |t|
    t.integer  "ticker_id"
    t.datetime "date"
    t.string   "text"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "positive_count"
    t.integer  "negative_count"
    t.integer  "neutral_count"
  end

  add_index "bigrams", ["date"], name: "index_bigrams_on_date"
  add_index "bigrams", ["ticker_id"], name: "index_bigrams_on_ticker_id"

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.integer  "ticker_id"
    t.string   "text"
    t.integer  "sentiment"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "support"
    t.string   "extract"
    t.string   "url"
  end

  add_index "comments", ["date"], name: "index_comments_on_date"
  add_index "comments", ["ticker_id"], name: "index_comments_on_ticker_id"

  create_table "mentions", force: true do |t|
    t.integer  "ticker_id"
    t.datetime "date"
    t.integer  "positive_count"
    t.integer  "negative_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "neutral_count"
  end

  add_index "mentions", ["date"], name: "index_mentions_on_date"
  add_index "mentions", ["ticker_id"], name: "index_mentions_on_ticker_id"

  create_table "tickers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cashtag"
    t.string   "official_name"
    t.integer  "category_id"
  end

  create_table "trigrams", force: true do |t|
    t.integer  "ticker_id"
    t.datetime "date"
    t.string   "text"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "positive_count"
    t.integer  "negative_count"
    t.integer  "neutral_count"
  end

  add_index "trigrams", ["date"], name: "index_trigrams_on_date"
  add_index "trigrams", ["ticker_id"], name: "index_trigrams_on_ticker_id"

  create_table "unigrams", force: true do |t|
    t.integer  "ticker_id"
    t.datetime "date"
    t.string   "text"
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "positive_count"
    t.integer  "negative_count"
    t.integer  "neutral_count"
  end

  add_index "unigrams", ["date"], name: "index_unigrams_on_date"
  add_index "unigrams", ["ticker_id"], name: "index_unigrams_on_ticker_id"

end
