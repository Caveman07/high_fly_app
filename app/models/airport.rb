class Airport < ApplicationRecord
  has_many :arriving_flights, class_name: "Flight",
                               foreign_key: "finish_airport_id",
                               dependent: :destroy
  has_many :departing_flights, class_name: "Flight",
                              foreign_key: "start_airport_id",
                              dependent: :destroy

end
