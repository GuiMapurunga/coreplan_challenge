class MotherboardsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render json: Motherboard.all
    end

    def create
        motherboard = Motherboard.create(motherboard_params)
        render json: motherboard, status: :created
        
    end
end
