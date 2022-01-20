# frozen_string_literal: true

class Client < ApplicationRecord
  has_many :payments
  has_many :transactions

  validates :email
            :first_name
            :last_name
            :job
            :country
            :address
            :zip_code
            :phone
end
