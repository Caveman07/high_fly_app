class Passenger < ApplicationRecord
  has_many :flights, through: :bookings
  has_many :bookings, through: :passenger_bookings
  has_many :passenger_bookings, dependent: :destroy

  validates :name,  presence: true
	validates :email, presence: true,
                            format:   { with: /[a-zA-Z]\w*@\w+\.\w{2,4}/ }

end
