class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
    @appointments = Appointment.all.select {|appointment| appointment.patient_id == @patient.id}
  end
end
