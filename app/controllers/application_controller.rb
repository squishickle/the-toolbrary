class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :photo, :password, :password_confirmation, :current_password])
    update_attrs = [:password, :password_confirmation, :current_password, :photo]
    devise_parameter_sanitizer.permit :account_update, keys: update_attrs
  end

end
