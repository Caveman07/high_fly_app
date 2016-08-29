class CreatePassengerBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :passenger_bookings do |t|
      t.integer :booking_id
      t.integer :passenger_id

      t.timestamps
    end
    add_index :passenger_bookings, :booking_id
		add_index :passenger_bookings, :passenger_id
  end
end
