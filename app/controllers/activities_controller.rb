class ActivitiesController < ApplicationController
    before_action :set_activity, only: [:destroy]
    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        @activity.destroy!
        render json: {}, status: :no_content
    end

    private
    def set_activity
        @activity = Activity.find(params[:id])
    end
end
