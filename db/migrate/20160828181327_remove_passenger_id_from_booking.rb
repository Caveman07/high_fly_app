class RemovePassengerIdFromBooking < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :passenger_id, :integer
  end
end
