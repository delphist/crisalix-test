# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  def create
    build_resource(sign_up_params)

    set_profile_fields

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  protected

  def set_profile_fields
    if params[:user][:profile_type] == 'doctor'
      resource.profile = Doctor.new(doctor_params)
    elsif params[:user][:profile_type] == 'patient'
      resource.profile = Patient.new(patient_params)
    end
  end

  def doctor_params
    params.require(:user).require(:doctor).permit(:name, :city)
  end

  def patient_params
    params.require(:user).require(:patient).permit(:name)
  end
end
