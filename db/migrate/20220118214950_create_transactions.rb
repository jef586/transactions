# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :client
      t.belongs_to :payment
      t.string :id_transaction
      t.integer :ammount
      t.integer :status

      t.timestamps
    end
  end
end
