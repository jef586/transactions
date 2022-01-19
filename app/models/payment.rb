# frozen_string_literal: true

class Payment < ApplicationRecord
    has many :transactions
    belong to :clients
end
