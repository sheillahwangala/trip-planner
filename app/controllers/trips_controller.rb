class TripsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        trips = Trip.all
        render json: trips
    end

    def show
        trip = Trip.find(params[:id])
        render json: trip
    end

    private

    def render_not_found_response
        render json: { error: "Trip not found" }, status: :not_found
    end

end
