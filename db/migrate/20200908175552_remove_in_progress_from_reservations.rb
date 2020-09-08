class RemoveInProgressFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :in_progress
  end
end
