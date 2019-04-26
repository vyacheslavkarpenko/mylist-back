class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def rest
    @rest = "ApplicationController.rest"
    current_user.id
  end
  helper_method :rest

  def current_user_job
    p 'current_user_job'
  end
  helper_method :current_user_job

  private

  def require_login
    redirect_to new_session_url unless session[:user_id]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
