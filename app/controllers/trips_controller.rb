class TripsController < ApplicationController
    before_action :authorize

    def index
        user = User.find_by(id: session[:user_id])
        trips = Trip.all
        render json: trips, status: :created
    end

    def create
        @user = User.find_by(id: session[user_id])
        trip = Trip.create(trip_params.merge({user_id: @user.id}))
        if trip.valid?
            render json: trip, status: :created
        else
            render json: { errors: trip.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private

    def authorize
        return render json: { errors: ["Not authorized"] }, status: :unauthorized unless session.include? :user_id
    end

    def trip_params
        params.permit(:title, :start_date, :end_date)
    end

    
end
