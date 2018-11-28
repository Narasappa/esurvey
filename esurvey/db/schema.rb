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

ActiveRecord::Schema.define(:version => 20171028072026) do

  create_table "interviews", :force => true do |t|
    t.string   "name"
    t.string   "mobile_number"
    t.string   "voter_id"
    t.integer  "survey_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "mla_town_id"
    t.integer  "user_id"
  end

  add_index "interviews", ["survey_id"], :name => "index_interviews_on_survey_id"

  create_table "merit_template_criteria", :force => true do |t|
    t.string   "criteria_name"
    t.integer  "criteria_marks"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "merit_template_subjects", :force => true do |t|
    t.string   "subject_name"
    t.integer  "subject_marks"
    t.integer  "merit_template_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "merit_templates", :force => true do |t|
    t.string   "template_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "messages", :force => true do |t|
    t.string   "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mla_constituencies", :force => true do |t|
    t.string   "constituency_name"
    t.string   "state_id"
    t.integer  "district_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "mla_towns", :force => true do |t|
    t.string   "town_name"
    t.integer  "state_id"
    t.integer  "mla_constituency_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "mp_constituencies", :force => true do |t|
    t.string   "constituency_name"
    t.string   "state_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "notifications", :force => true do |t|
    t.string   "event"
    t.integer  "sender_id"
    t.string   "receiver_id"
    t.boolean  "is_read"
    t.boolean  "is_deleted"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "pictures", :force => true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "political_parties", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "is_active",   :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "short_word"
  end

  create_table "questions", :force => true do |t|
    t.string   "name"
    t.boolean  "is_active",  :default => true
    t.integer  "survey_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "questions", ["survey_id"], :name => "index_questions_on_survey_id"

  create_table "roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servey_conducters", :force => true do |t|
    t.integer  "mla_town_id"
    t.integer  "user_id"
    t.integer  "survey_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "servey_conducters", ["mla_town_id"], :name => "index_servey_conducters_on_mla_town_id"
  add_index "servey_conducters", ["survey_id"], :name => "index_servey_conducters_on_survey_id"
  add_index "servey_conducters", ["user_id"], :name => "index_servey_conducters_on_user_id"

  create_table "states", :force => true do |t|
    t.string   "state_name"
    t.string   "state_code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "survey_results", :force => true do |t|
    t.integer  "interview_id"
    t.integer  "survey_marks", :default => 0
    t.integer  "question_id"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "survey_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surveys", :force => true do |t|
    t.string   "name"
    t.integer  "survey_type_id"
    t.integer  "scale_weightage"
    t.text     "merit_weightage"
    t.integer  "political_party_id"
    t.string   "survey_scale"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "merit_template_id"
    t.integer  "state_id"
    t.integer  "mp_constituency_id"
    t.integer  "mla_constituency_id"
    t.integer  "mla_town_id"
    t.integer  "user_id"
  end

  add_index "surveys", ["political_party_id"], :name => "index_surveys_on_political_party_id"
  add_index "surveys", ["survey_type_id"], :name => "index_surveys_on_survey_type_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile_number"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "reset_password_code"
    t.string   "reset_password_code_until"
    t.string   "authentication_token"
    t.boolean  "is_active",                 :default => true
    t.integer  "political_party_id"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
    t.integer  "role_id"
  end

  add_index "users", ["political_party_id"], :name => "index_users_on_political_party_id"

end
