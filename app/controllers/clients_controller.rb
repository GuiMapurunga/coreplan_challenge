# app/controllers/clients_controller.rb
class ClientsController < ApplicationController
  before_action :set_client, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /clients
  def index
    @clients = Client.all
    if @clients.empty?
      render json: { message: "Nenhum registro encontrado para Clients" }, status: :ok
    else
      render json: @clients, status: :ok
    end
  end

  # GET /clients/1
  def show
    render json: { client: @client }, status: :ok
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  def create
    @client = Client.new(client_params)

    if @client.save
      render json: @client, status: :created
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clients/1
  def update
    if @client.update(client_params)
      render json: @client, status: :ok
    else
      render json: @client.errors, status: :unprocessable_entity
    end
  end

  # DELETE /clients/1
  def destroy
    if @client.destroy
      render json: { message: "Client excluído com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir Client" }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_client
    @client = Client.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def client_params
    params.require(:client).permit(:name, :adress, :phone_number, :computers_id)
  end
end
