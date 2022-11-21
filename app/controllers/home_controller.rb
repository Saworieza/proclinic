class HomeController < ApplicationController
  def index
    @patients = Patient.all
    @doctors = Doctor.all
    @appointments = Appointment.all
    @payments = Payment.all
  end
end
