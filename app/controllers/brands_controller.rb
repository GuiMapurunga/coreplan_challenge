class BrandsController < ApplicationController
  before_action :set_brand, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /brands or /brands.json
  def index
    @brands = Brand.all
    if @brands.empty?
      render json: { message: "Nenhum registro encontrado para Brands" }, status: :ok
    else
      render json: @brands, status: :ok
    end
  end

  # GET /brands/1 or /brands/1.json
  def show
    render json: { brand: @brand }, status: :ok
  end

  # GET /brands/new
  def new
    @brand = Brand.new
  end

  # GET /brands/1/edit
  def edit
  end

  # POST /brands or /brands.json
  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      render json: @brand, status: :created
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end  

  # PATCH/PUT /brands/1 or /brands/1.json
  def update
    @brand = Brand.find(params[:id])
    if @brand.update(brand_params)
      render json: @brand, status: :ok
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /brands/1 or /brands/1.json
  def destroy
    if @brand.destroy
      render json: { message: "Brand excluída com sucesso" }, status: :ok
    else
      render json: { error: "Falha ao excluir Brand" }, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_brand
    @brand = Brand.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def brand_params
    params.require(:brand).permit(:name)
  end
end
