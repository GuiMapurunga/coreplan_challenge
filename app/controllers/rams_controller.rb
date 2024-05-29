class RamsController < ApplicationController
  before_action :set_ram, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /rams or /rams.json
  def index
    @rams = Ram.all
    if @rams.empty?
      render json: { message: "Nenhum registro encontrado para Rams" }, status: :ok
    else
      render json: @rams, status: :ok
    end
  end

  # GET /rams/1 or /rams/1.json
  def show
    render json: { ram: @ram }, status: :ok
  end

  # GET /rams/new
  def new
    @ram = Ram.new
  end

  # GET /rams/1/edit
  def edit
  end

  # POST /rams or /rams.json
  def create
    @ram = Ram.new(ram_params)
    if @ram.save
      render json: @ram, status: :created
    else
      render json: @ram.errors, status: :unprocessable_entity
    end
  end  

  # PATCH/PUT /rams/1 or /rams/1.json
  def update
    @ram = Ram.find(params[:id])
    if @ram.update(ram_params)
      render json: @ram, status: :ok
    else
      render json: @ram.errors, status: :unprocessable_entity
    end
  end
  # DELETE /rams/1 or /rams/1.json
  def destroy
    if @ram.destroy
      render json: { message: "Ram excluída com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir Ram" }, status: :unprocessable_entity
    end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_ram
      @ram = Ram.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def ram_params
      params.require(:ram).permit(:name, :capacity, :price)
    end
end
