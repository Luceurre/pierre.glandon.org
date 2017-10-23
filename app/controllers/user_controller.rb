# Class to prevent user to use the site without to log in first

class UserController < ActionController::Base
  before_action :require_login

  def require_login
    if session[:user_name] && request.fullpath == login_path
      logger.info 'I should be redirected to user_administration '
      redirect_to user_administration_path
    elsif session[:user_name].nil? && request.fullpath != login_path
      redirect_to login_path
    end
  end
end
