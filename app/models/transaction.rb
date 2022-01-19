# frozen_string_literal: true

class Transaction < ApplicationRecord
    belong to :clients
    belong to :transactions
end
