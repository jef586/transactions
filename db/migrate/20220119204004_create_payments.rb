# frozen_string_literal: true

class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.belongs_to :clients
      t.string :id_payment
      t.integer :currency
      t.integer :ammount
      t.integer :total_discount
      t.integer :total_amount
      t.string :id_discount
      t.integer :type_discount

      t.timestamps
    end
  end
end
