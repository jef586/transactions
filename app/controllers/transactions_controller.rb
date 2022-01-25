# frozen_string_literal: true

class TransactionsController < ApiController
  def index
    @transactions = Transaction.all
    render json: @transactions, each_serializer: TransactionSerializer, status: :ok
  end
end
