# frozen_string_literal: true

class TransactionSerializer < ApplicationSerializer
  attributes :id,
             :currency,
             :ammount,
             :total_discount,
             :total_amount,
             :id_discount,
             :type_discount
end
