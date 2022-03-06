# frozen_string_literal: true

class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
    render json: @transactions, each_serializer: TransactionSerializer, status: :ok
  end
end
