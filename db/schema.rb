# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_220_122_104_244) do
  create_table 'clients', force: :cascade do |t|
    t.string 'id_client'
    t.string 'email'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'job'
    t.string 'country'
    t.string 'address'
    t.string 'zip_code'
    t.string 'phone'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'payments', force: :cascade do |t|
    t.integer 'client_id'
    t.string 'id_payment'
    t.integer 'currency'
    t.integer 'ammount'
    t.integer 'total_discount'
    t.integer 'total_amount'
    t.string 'id_discount'
    t.integer 'type_discount'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['client_id'], name: 'index_payments_on_client_id'
  end

  create_table 'transactions', force: :cascade do |t|
    t.integer 'client_id'
    t.integer 'payment_id'
    t.string 'id_transaction'
    t.integer 'ammount'
    t.integer 'status'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['client_id'], name: 'index_transactions_on_client_id'
    t.index ['payment_id'], name: 'index_transactions_on_payment_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'provider', default: 'email', null: false
    t.string 'uid', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.boolean 'allow_password_change', default: false
    t.datetime 'remember_created_at'
    t.string 'first_name'
    t.string 'last_name'
    t.string 'image'
    t.string 'email'
    t.text 'tokens'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
    t.index %w[uid provider], name: 'index_users_on_uid_and_provider', unique: true
  end
end
