# app/controllers/computer_rams_controller.rb
class ComputerRamsController < ApplicationController
  before_action :set_computer_ram, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /computer_rams
  def index
    @computer_rams = ComputerRam.all
    if @computer_rams.empty?
      render json: { message: "Nenhum registro encontrado para ComputerRams" }, status: :ok
    else
      render json: @computer_rams, status: :ok
    end
  end

  # GET /computer_rams/1
  def show
    render json: { computer_ram: @computer_ram }, status: :ok
  end

  # GET /computer_rams/new
  def new
    @computer_ram = ComputerRam.new
  end

  # GET /computer_rams/1/edit
  def edit
  end

  # POST /computer_rams
  def create
    @computer_ram = ComputerRam.new(computer_ram_params)

    if @computer_ram.save
      render json: @computer_ram, status: :created
    else
      render json: @computer_ram.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /computer_rams/1
  def update
    if @computer_ram.update(computer_ram_params)
      render json: @computer_ram, status: :ok
    else
      render json: @computer_ram.errors, status: :unprocessable_entity
    end
  end

  # DELETE /computer_rams/1
  def destroy
    if @computer_ram.destroy
      render json: { message: "ComputerRam excluído com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir ComputerRam" }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_computer_ram
    @computer_ram = ComputerRam.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def computer_ram_params
    params.require(:computer_ram).permit(:computer_id, :ram_id, :capacity)
  end
end
