# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :payments
  has_many :transactions
end
