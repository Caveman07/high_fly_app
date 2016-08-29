class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|

      t.timestamps
    end
    add_index :bookings, :ref_number
  end
end
