class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.text :notes
      t.boolean :in_progress
      t.boolean :is_complete

      t.timestamps
    end
  end
end
