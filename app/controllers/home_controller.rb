class HomeController < ApplicationController
  def index
    return unless user_signed_in?

    if current_user.doctor?
      redirect_to doctors_appointments_path
    elsif current_user.patient?
      redirect_to patients_appointments_path
    end
  end
end
