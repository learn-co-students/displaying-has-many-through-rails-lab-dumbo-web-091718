class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
    @appointments = Appointment.all.select {|appointment| appointment.doctor_id == @doctor.id}
  end
end
