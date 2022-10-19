class CampersController < ApplicationController
    before_action :set_camper, only: [:show, :update, :destroy]
    def index 
        render json: Camper.all, status: :ok
    end

    def show 
        render json: @camper, serializer: CamperWithAcitivitiesSerializer, status: :ok
    end

    def create
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private
    def set_camper
        @camper = Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
