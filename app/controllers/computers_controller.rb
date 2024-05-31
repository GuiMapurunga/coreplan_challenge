# app/controllers/computers_controller.rb
class ComputersController < ApplicationController
  before_action :set_computer, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /computers
  def index
    @computers = Computer.all
    if @computers.empty?
      render json: { message: "Nenhum registro encontrado para Computers" }, status: :ok
    else
      render json: @computers, status: :ok
    end
  end

  # GET /computers/1
  def show
    render json: { computer: @computer }, status: :ok
  end

  # GET /computers/new
  def new
    @computer = Computer.new
  end

  # GET /computers/1/edit
  def edit
  end

  # POST /computers
  def create
    @computer = Computer.new(computer_params)

    if @computer.save
      render json: @computer, status: :created
    else
      render json: @computer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /computers/1
  def update
    if @computer.update(computer_params)
      render json: @computer, status: :ok
    else
      render json: @computer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /computers/1
  def destroy
    if @computer.destroy
      render json: { message: "Computer excluído com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir Computer" }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_computer
    @computer = Computer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def computer_params
    params.require(:computer).permit(:cpu_id, :motherboard_id, :gpu_id)
  end
end
