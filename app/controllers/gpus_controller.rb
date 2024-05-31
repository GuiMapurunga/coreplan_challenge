# app/controllers/gpus_controller.rb
class GpusController < ApplicationController
    before_action :set_gpu, only: %i[show edit update destroy]
    skip_before_action :verify_authenticity_token
  
    # GET /gpus
    def index
      @gpus = Gpu.all
      if @gpus.empty?
        render json: { message: "Nenhum registro encontrado para GPUs" }, status: :ok
      else
        render json: @gpus, status: :ok
      end
    end
  
    # GET /gpus/1
    def show
      render json: { gpu: @gpu }, status: :ok
    end
  
    # GET /gpus/new
    def new
      @gpu = Gpu.new
    end
  
    # GET /gpus/1/edit
    def edit
    end
  
    # POST /gpus
    def create
      @gpu = Gpu.new(gpu_params)
  
      if @gpu.save
        render json: @gpu, status: :created
      else
        render json: @gpu.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /gpus/1
    def update
      if @gpu.update(gpu_params)
        render json: @gpu, status: :ok
      else
        render json: @gpu.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /gpus/1
    def destroy
      if @gpu.destroy
        render json: { message: "GPU excluída com sucesso" }, status: :ok
      else
        render json: { error: "Falha ao excluir GPU" }, status: :un
  