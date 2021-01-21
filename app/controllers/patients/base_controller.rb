module Patients
  class BaseController < ApplicationController
    before_action :ensure_user_has_profile
    before_action :authenticate_patient!

    def authenticate_patient!
      return if user_signed_in? && current_user.patient?

      not_found
    end

    def current_patient
      current_user.profile
    end
  end
end
