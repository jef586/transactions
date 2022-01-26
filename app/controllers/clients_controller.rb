# frozen_string_literal: true

class ClientsController < ApiController
  def index
    @clients = Client.all.order(id: :asc)
    render json: @clients, each_serializer: ClientSerializer, status: :ok
  end
end
