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
    binding.pry
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
