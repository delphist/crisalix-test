module Doctors
  class BaseController < ApplicationController
    before_action :ensure_user_has_profile
    before_action :authenticate_doctor!

    def authenticate_doctor!
      return if user_signed_in? && current_user.doctor?

      not_found
    end

    def current_doctor
      current_user.profile
    end
  end
end
