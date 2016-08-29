class ChangeFlightDurationInFlights < ActiveRecord::Migration[5.0]
  def change
      change_column :flights, :flight_duration, :integer
  end
end
