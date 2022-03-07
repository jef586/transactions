# frozen_string_literal: true

class TransactionsByClientSerializer < ApplicationSerializer
  attributes :id,
             :first_name,
             :last_name,
             :external_id,
             :transactions
end
    