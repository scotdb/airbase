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

ActiveRecord::Schema.define(:version => 20110118170714) do

  create_table "aircraft", :force => true do |t|
    t.string    "aircraft_type"
    t.string    "constructors_number"
    t.integer   "line_number"
    t.integer   "aircraft_status_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "aircraft_histories", :force => true do |t|
    t.integer   "aircraft_id"
    t.integer   "aircraft_sequence"
    t.string    "registration",      :limit => 10
    t.string    "aircraft_details"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "aircraft_statuses", :force => true do |t|
    t.string    "description"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "airport_visits", :force => true do |t|
    t.integer   "airport_id"
    t.date      "visit_date"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "airports", :force => true do |t|
    t.string    "name"
    t.string    "iata_code",  :limit => 3
    t.string    "icao_code",  :limit => 4
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "seenlists", :force => true do |t|
    t.integer   "airport_visit_id"
    t.integer   "aircraft_history_id"
    t.string    "registration"
    t.string    "aircraft_type"
    t.string    "constructors_number"
    t.integer   "line_number"
    t.string    "operator"
    t.text      "notes",               :limit => 1048576
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "email",                               :default => "", :null => false
    t.string    "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string    "password_salt",                       :default => "", :null => false
    t.string    "reset_password_token"
    t.string    "remember_token"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                       :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
