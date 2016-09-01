class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
        if @booking.save
                @booking.passengers.each do |p|
                    PassengerMailer.welcome_email(p).deliver_now
                end
                format.html { redirect_to(booking_path(@booking), notice: 'Booking was successfully created.') }
                format.json { render json: @booking, status: :created, location: @booking }

        else
          @flight = Flight.find(params[:flight_id])
          flash.now[:danger] = "Make sure the passenger information is correct."
            format.html { render action: 'new' }
            format.json { render json: @booking.errors, status: :unprocessable_entity }

        end
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
      def booking_params
        params.require(:booking).permit(:flight_id,
                                      :passengers_attributes => [:name, :email] )
      end
end
