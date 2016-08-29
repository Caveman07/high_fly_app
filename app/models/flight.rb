class Flight < ApplicationRecord
   belongs_to :from_airport, class_name: "Airport", foreign_key: "start_airport_id"
   belongs_to :to_airport, class_name: "Airport", foreign_key: "finish_airport_id"
   has_many   :passengers, through: :bookings
   has_many   :bookings, class_name: "Booking", foreign_key: "flight_id", dependent: :destroy

   def self.search(params)
     if params[:search] && !params[:date].blank?
       date = params[:date].to_date
       Flight.where(start_airport_id: params[:from], finish_airport_id: params[:to],
                    start_datetime: date.beginning_of_day..date.end_of_day)
                    .includes(:from_airport, :to_airport)
      else
        Flight.none
      end
   end

   def self.get_dates
        pluck(:start_datetime).map{ |d| [ d.strftime("%m/%d/%Y"), d.to_date] }.uniq
   end





end
