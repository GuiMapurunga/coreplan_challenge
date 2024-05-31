# app/controllers/cpus_controller.rb
class CpusController < ApplicationController
  before_action :set_cpu, only: %i[show edit update destroy]
  skip_before_action :verify_authenticity_token

  # GET /cpus
  def index
    @cpus = Cpu.all
    if @cpus.empty?
      render json: { message: "Nenhum registro encontrado para CPUs" }, status: :ok
    else
      render json: @cpus, status: :ok
    end
  end

  # GET /cpus/1
  def show
    render json: { cpu: @cpu }, status: :ok
  end

  # GET /cpus/new
  def new
    @cpu = Cpu.new
  end

  # GET /cpus/1/edit
  def edit
  end

  # POST /cpus
  def create
    @cpu = Cpu.new(cpu_params)

    if @cpu.save
      render json: @cpu, status: :created
    else
      render json: @cpu.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cpus/1
  def update
    if @cpu.update(cpu_params)
      render json: @cpu, status: :ok
    else
      render json: @cpu.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cpus/1
  def destroy
    if @cpu.destroy
      render json: { message: "CPU excluída com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir CPU" }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cpu
    @cpu = Cpu.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cpu_params
    params.require(:cpu).permit(:brand_id, :name)
  end
end
