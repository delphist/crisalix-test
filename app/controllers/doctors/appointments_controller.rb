module Doctors
  class AppointmentsController < BaseController
    def index
      @appointments = current_doctor.appointments.includes(:patient).newest
    end

    def show
      @appointment = current_doctor.appointments.find(params[:id])
    end
  end
end
