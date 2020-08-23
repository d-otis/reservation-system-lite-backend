class Api::V1::ReservationsController < ApplicationController
  def index
    reservations = Reservation.order(created_at: :desc)

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
    reservation = Reservation.find_by(id: params[:id])

    if reservation.update(reservation_params)
      render json: {message: "Reservation successfully updated"}
    else
      render json: {message: "Unable to Update"}
    end
  end

  def destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(
      :notes,
      :is_complete,
      :in_progress,
      :item_ids => []
    )
  end

  def options
    options = {
      include: [:items]
    }
  end
end
