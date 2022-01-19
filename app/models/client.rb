# frozen_string_literal: true

class Client < ApplicationRecord
  has many :payments
  has many :transactions
end
