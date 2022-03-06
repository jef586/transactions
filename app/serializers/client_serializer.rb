# frozen_string_literal: true

class ClientSerializer < ApplicationSerializer
  attributes :id,
             :email,
             :first_name,
             :last_name,
             :job,
             :country,
             :address,
             :zip_code,
             :phone,
             :external_id,
             :payments
end
