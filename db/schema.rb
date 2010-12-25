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

ActiveRecord::Schema.define(:version => 20101225154557) do

  create_table "men", :force => true do |t|
    t.string   "first_name", :limit => 100
    t.string   "last_name",  :limit => 100
    t.date     "birth_date"
    t.date     "dead_date"
    t.text     "about"
    t.integer  "mother_id"
    t.integer  "father_id"
    t.integer  "wife_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "men", ["father_id"], :name => "men_father_id_fk"
  add_index "men", ["mother_id"], :name => "men_mother_id_fk"
  add_index "men", ["wife_id"], :name => "men_wife_id_fk"

  create_table "women", :force => true do |t|
    t.string   "first_name", :limit => 100
    t.string   "last_name",  :limit => 100
    t.date     "birth_date"
    t.date     "dead_date"
    t.text     "about"
    t.integer  "mother_id"
    t.integer  "father_id"
    t.integer  "husband_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "women", ["father_id"], :name => "women_father_id_fk"
  add_index "women", ["husband_id"], :name => "women_husband_id_fk"
  add_index "women", ["mother_id"], :name => "women_mother_id_fk"

  add_foreign_key "men", "men", :name => "men_father_id_fk", :column => "father_id"
  add_foreign_key "men", "women", :name => "men_mother_id_fk", :column => "mother_id"
  add_foreign_key "men", "women", :name => "men_wife_id_fk", :column => "wife_id"

  add_foreign_key "women", "men", :name => "women_father_id_fk", :column => "father_id"
  add_foreign_key "women", "men", :name => "women_husband_id_fk", :column => "husband_id"
  add_foreign_key "women", "women", :name => "women_mother_id_fk", :column => "mother_id"

end
