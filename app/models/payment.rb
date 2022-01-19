# frozen_string_literal: true

class Payment < ApplicationRecord
    has_many :transactions
    belongs_to :clients
end
