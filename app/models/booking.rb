class Booking < ApplicationRecord
  has_many :passengers, through: :passenger_bookings
  has_many :passenger_bookings, dependent: :destroy
  belongs_to :flight, class_name: "Flight"

  # validates :ref_number, presence: true

  accepts_nested_attributes_for :passengers
end
