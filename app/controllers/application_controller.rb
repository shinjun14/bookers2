class ApplicationController < ActionController::Base
  #before_action :authenticate_user!,exept: [:top]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    user_path(@user.id)
  end

  def after_sign_up_path_for(resource)
    user_path(@user.id)
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
