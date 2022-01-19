# frozen_string_literal: true

class Transaction < ApplicationRecord
    belongs_to :clients
    belongs_to :transactions
end
