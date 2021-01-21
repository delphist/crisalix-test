module Patients
  class AppointmentsController < BaseController
    def index
      @appointments = current_patient.appointments.includes(:doctor).newest
    end

    def new
      @doctor = Doctor.find(params[:doctor_id])
      @resource = current_patient.appointments.build(
        doctor: @doctor,
        patient: current_patient,
        scheduled_at: Time.zone.now + 12.hours
      )
    end

    def create
      @resource = current_patient.appointments.create(appointment_params)
      if @resource.persisted?
        redirect_to patients_appointments_path
      else
        render 'new'
      end
    end

    def show
      @appointment = current_patient.appointments.find(params[:id])
    end

    protected

    def appointment_params
      params.require(:appointment).permit(:doctor_id, :scheduled_at, images: [])
    end
  end
end
