module Patients
  class DoctorsController < BaseController
    def index
      @doctors = Patients::DoctorQuery.new(query: params[:query]).execute

      respond_to do |format|
        format.html
        format.json { render jsonapi: @doctors }
      end
    end
  end
end
