# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.belongs_to :clients
      t.belongs_to :payments
      t.string :id_transaction
      t.integer :ammount
      t.integer :status

      t.timestamps
    end
  end
end
