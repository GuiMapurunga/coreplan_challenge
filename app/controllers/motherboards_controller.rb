class MotherboardsController < ApplicationController
    before_action :set_motherboard, only: %i[ show edit update destroy ]
    skip_before_action :verify_authenticity_token
  
    # GET /motherboards or /motherboards.json
    def index
      @motherboards = Motherboard.all
      if @motherboards.empty?
        render json: { message: "Nenhum registro encontrado para Motherboards" }, status: :ok
      else
        render json: @motherboards, status: :ok
      end
    end
  
    # GET /motherboards/1 or /motherboards/1.json
    def show
      render json: { motherboard: @motherboard }, status: :ok
    end
  
    # GET /motherboards/new
    def new
      @motherboard = Motherboard.new
    end
  
    # GET /motherboards/1/edit
    def edit
    end
  
    # POST /motherboards or /motherboards.json
    def create
      @motherboard = Motherboard.new(motherboard_params)
      if @motherboard.save
        render json: @motherboard, status: :created
      else
        render json: @motherboard.errors, status: :unprocessable_entity
      end
    end  
  
    # PATCH/PUT /motherboards/1 or /motherboards/1.json
    # PATCH/PUT /motherboards/1 or /motherboards/1.json
    def update
        @motherboard = Motherboard.find(params[:id])
        if @motherboard.update(motherboard_params)
          render json: @motherboard, status: :ok
        else
          render json: @motherboard.errors, status: :unprocessable_entity
        end
      end
  
  
    # DELETE /motherboards/1 or /motherboards/1.json
    def destroy
      if @motherboard.destroy
        render json: { message: "Motherboard excluída com sucesso" }, status: :ok
      else
        render json: { error: "Falha ao excluir Motherboard" }, status: :unprocessable_entity
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_motherboard
        @motherboard = Motherboard.find(params[:id])
      end
  
      private
      # Only allow a list of trusted parameters through.
      def motherboard_params
        params.require(:motherboard).permit(:name, :integrated_graph, :amd_compatibility, :intel_compatibility, :max_ram, :max_ram_slots)
      end
    end