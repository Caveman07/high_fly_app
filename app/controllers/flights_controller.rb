class FlightsController < ApplicationController
  def index
    @flights = Flight.search(params)
    @airports = Airport.pluck(:code, :id).sort.uniq{|x| x[0] }
    @dates = Flight.get_dates
    @passengers = (1..4).map { |p| [  p.to_s + " passenger".pluralize(p), p] }
  end
end
