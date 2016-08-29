class AddColumnsToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :flight_id, :integer
    add_column :bookings, :passenger_id, :integer
  end
end
