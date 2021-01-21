class ApplicationController < ActionController::Base
  def not_found
    raise ActionController::RoutingError, 'Not Found'
  end

  def ensure_user_has_profile
    return unless user_signed_in?
  end
end
