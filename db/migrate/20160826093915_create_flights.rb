class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :start_airport_id
      t.integer :finish_airport_id
      t.datetime :start_datetime
      t.time :flight_duration

      t.timestamps
    end

    add_index :flights, :start_airport_id
    add_index :flights, :finish_airport_id
  end
end
