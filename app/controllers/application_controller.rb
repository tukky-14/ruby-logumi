class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :basic_auth

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :like, :image, :introduction])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :like, :image, :introduction])
  end

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'admin' && password == '0909'
    end
  end

end
