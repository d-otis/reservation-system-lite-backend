class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.all

    render json: ReservationSerializer.new(reservations, options).serialized_json
  end

  def show
    reservation = Reservation.find_by(id: params[:id])

    render json: ReservationSerializer.new(reservation, options).serialized_json
  end

  def create
    reservation = Reservation.new(reservation_params)

    if reservation.save
      render json: ReservationSerializer.new(reservation, options).serialized_json
    else
      render json: {message: 'unable to save reservation'}
    end
  end

  def update
  end

  def destroy
  end

  private

  def options
    options = {
      include: [:items]
    }
  end
end
