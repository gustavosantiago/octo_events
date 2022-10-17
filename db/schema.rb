# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_17_001128) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "webhooks", force: :cascade do |t|
    t.string "event", null: false
    t.text "payload", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event", "payload"], name: "index_webhooks_on_event_and_payload"
    t.index ["event"], name: "index_webhooks_on_event"
    t.index ["payload"], name: "index_webhooks_on_payload"
  end

end