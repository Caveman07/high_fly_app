class PassengerMailer < ApplicationMailer
default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @booking = @user.bookings.last
    mail(to: @user.email, subject: 'Welcome to My Flyapp')
  end
end
