class AddRefNumberToBooking < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :ref_number, :string
  end
end
